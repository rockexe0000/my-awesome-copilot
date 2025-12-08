#!/usr/bin/env bash

# Collections 驗證腳本
# 檢查 collection 檔案的完整性和正確性

set -e

COLLECTIONS_DIR="collections"
ERRORS=0
WARNINGS=0

echo "🔍 驗證 Collections..."
echo ""

# 顏色定義
RED='\033[0;31m'
YELLOW='\033[1;33m'
GREEN='\033[0;32m'
NC='\033[0m' # No Color

# 檢查 collections 目錄是否存在
if [ ! -d "$COLLECTIONS_DIR" ]; then
    echo -e "${RED}❌ Collections 目錄不存在: $COLLECTIONS_DIR${NC}"
    exit 1
fi

# 找到所有 .collection.yml 檔案
COLLECTION_YMLS=$(find "$COLLECTIONS_DIR" -name "*.collection.yml" -type f)

if [ -z "$COLLECTION_YMLS" ]; then
    echo -e "${RED}❌ 沒有找到任何 .collection.yml 檔案${NC}"
    exit 1
fi

# 驗證每個 collection
while IFS= read -r yml_file; do
    basename=$(basename "$yml_file" .collection.yml)
    md_file="${COLLECTIONS_DIR}/${basename}.md"
    
    echo "📦 檢查 Collection: $basename"
    
    # 檢查對應的 Markdown 檔案是否存在
    if [ ! -f "$md_file" ]; then
        echo -e "${RED}  ❌ 缺少對應的 Markdown 檔案: $md_file${NC}"
        ((ERRORS++))
    else
        echo -e "${GREEN}  ✅ Markdown 檔案存在${NC}"
    fi
    
    # 檢查 YAML 檔案必要欄位
    if ! grep -q "^id:" "$yml_file"; then
        echo -e "${RED}  ❌ YAML 缺少 'id' 欄位${NC}"
        ((ERRORS++))
    fi
    
    if ! grep -q "^name:" "$yml_file"; then
        echo -e "${RED}  ❌ YAML 缺少 'name' 欄位${NC}"
        ((ERRORS++))
    fi
    
    if ! grep -q "^description:" "$yml_file"; then
        echo -e "${RED}  ❌ YAML 缺少 'description' 欄位${NC}"
        ((ERRORS++))
    fi
    
    if ! grep -q "^items:" "$yml_file"; then
        echo -e "${RED}  ❌ YAML 缺少 'items' 欄位${NC}"
        ((ERRORS++))
    fi
    
    # 檢查 items 中的檔案是否存在
    paths=$(grep "path:" "$yml_file" | sed 's/.*path: //' | tr -d '"')
    
    while IFS= read -r path; do
        if [ ! -f "$path" ]; then
            echo -e "${YELLOW}  ⚠️  參照的檔案不存在: $path${NC}"
            ((WARNINGS++))
        fi
    done <<< "$paths"
    
    # 檢查 Markdown 檔案基本結構
    if [ -f "$md_file" ]; then
        if ! grep -q "^# " "$md_file"; then
            echo -e "${YELLOW}  ⚠️  Markdown 缺少標題${NC}"
            ((WARNINGS++))
        fi
        
        if ! grep -q "^**Tags:" "$md_file"; then
            echo -e "${YELLOW}  ⚠️  Markdown 缺少 Tags 行${NC}"
            ((WARNINGS++))
        fi
        
        if ! grep -q "## Items in this Collection" "$md_file"; then
            echo -e "${YELLOW}  ⚠️  Markdown 缺少 'Items in this Collection' 章節${NC}"
            ((WARNINGS++))
        fi
        
        if ! grep -q "This collection includes" "$md_file"; then
            echo -e "${YELLOW}  ⚠️  Markdown 缺少項目總數統計${NC}"
            ((WARNINGS++))
        fi
    fi
    
    echo ""
    
done <<< "$COLLECTION_YMLS"

# 檢查是否有範本和 README
echo "📄 檢查必要檔案..."

if [ ! -f "${COLLECTIONS_DIR}/TEMPLATE.md" ]; then
    echo -e "${YELLOW}  ⚠️  缺少 TEMPLATE.md 範本檔案${NC}"
    ((WARNINGS++))
else
    echo -e "${GREEN}  ✅ TEMPLATE.md 存在${NC}"
fi

if [ ! -f "${COLLECTIONS_DIR}/README.md" ]; then
    echo -e "${YELLOW}  ⚠️  缺少 README.md 說明檔案${NC}"
    ((WARNINGS++))
else
    echo -e "${GREEN}  ✅ README.md 存在${NC}"
fi

echo ""
echo "================================"
echo "驗證結果:"
echo "================================"

if [ $ERRORS -eq 0 ] && [ $WARNINGS -eq 0 ]; then
    echo -e "${GREEN}✅ 所有檢查通過!${NC}"
    exit 0
elif [ $ERRORS -eq 0 ]; then
    echo -e "${YELLOW}⚠️  發現 $WARNINGS 個警告${NC}"
    exit 0
else
    echo -e "${RED}❌ 發現 $ERRORS 個錯誤, $WARNINGS 個警告${NC}"
    exit 1
fi
