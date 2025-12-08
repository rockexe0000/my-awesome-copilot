# 📦 Collections

精選的主題式集合,透過 YAML metadata 和 Markdown 說明文件,將相關的 prompts、instructions 和 agents **參照**在一起,用於特定的工作流程或使用場景。

> Curated collections that reference related prompts, instructions, and agents through YAML metadata and Markdown documentation, organized around specific themes, workflows, or use cases.

## ⚠️ 重要觀念

**Collections 是索引/參照,不是檔案容器!**

- ✅ Collection 檔案透過相對路徑**參照**實際檔案
- ✅ 實際的 prompt/agent/instruction 檔案保存在各自的目錄
- ❌ Collection 目錄**不包含**檔案副本
- ❌ Collection 目錄**不需要** `.github/` 子目錄

## 目錄 / Table of Contents

- [重要觀念](#-重要觀念)
- [目錄結構](#目錄結構)
- [Collection 檔案格式](#collection-檔案格式)
- [精選 Collections](#精選-collections)
- [如何使用 Collections](#如何使用-collections)
- [建立新的 Collection](#建立新的-collection)
- [Collections vs 個別檔案](#collections-vs-個別檔案)

## 目錄結構

```
collections/
├── README.md                              # Collections 目錄導向文件
├── TEMPLATE.md                            # Collection Markdown 範本
├── {name}.collection.yml                  # Collection YAML metadata
└── {name}.md                              # Collection Markdown 說明
```

**實際檔案位置** (被 collections 參照):
```
prompts/*.prompt.md                # Prompt 檔案
agents/*.agent.md                  # Agent 檔案
instructions/*.instructions.md     # Instruction 檔案
```

### Featured Collections

1. **Documentation Workflow** (`documentation-workflow.collection.yml` & `.md`)
   - 9 個 prompts: README、ADR、實作計劃、文件更新等
   - 適用於: 專案文件建立與維護

2. **Code Quality & Security** (`code-quality-security.collection.yml` & `.md`)
   - 4 個 instructions + 1 個 prompt
   - 適用於: 程式碼品質、安全性、效能優化

3. **DevOps Pipeline** (`devops-pipeline.collection.yml` & `.md`)
   - 2 個 instructions + 1 個 agent
   - 適用於: DevOps 原則、IaC、規格驅動開發

### Other Collections

4. **Meta Development** (`meta-development.collection.yml` & `.md`)
   - 8 個 prompts: Agent builder, prompt builder, 藍圖產生器等
   - 適用於: 建立新的 GitHub Copilot 資源

## Collection 檔案格式

每個 collection 由**兩個檔案**組成:

### 1. YAML Metadata 檔案 (`{name}.collection.yml`)

定義 collection 的 metadata 和項目參照:

```yaml
id: documentation-workflow
name: Documentation Workflow
description: "Complete workflow for generating professional documentation"
tags:
  - documentation
  - workflow
  - readme
items:
  - path: prompts/create-readme-comprehensive.prompt.md  # 相對路徑參照
    kind: prompt
  - path: prompts/create-architectural-decision-record.prompt.md
    kind: prompt
  - path: instructions/markdown.instructions.md
    kind: instruction
display:
  ordering: manual    # 或 "alpha" (字母排序)
  show_badge: true
  featured: true
```

**重要欄位說明**:
- `id`: Collection 唯一識別碼
- `name`: 顯示名稱
- `description`: 說明文字
- `tags`: 標籤陣列
- `items`: 項目陣列
  - `path`: 相對於專案根目錄的路徑 (**參照**,不是副本)
  - `kind`: 類型 (`prompt`, `agent`, `instruction`)
- `display`: 顯示設定
  - `ordering`: `manual` (手動排序) 或 `alpha` (字母排序)
  - `show_badge`: 是否顯示安裝徽章
  - `featured`: 是否為精選 collection

### 2. Markdown 說明文件 (`{name}.md`)

提供 collection 的說明和項目清單:

```markdown
# Documentation Workflow

Complete workflow for generating professional documentation including 
README files, architectural decision records, specifications, and 
implementation plans.

**Tags:** documentation, workflow, readme, adr, specification

## Items in this Collection

| Title | Type | Description | MCP Servers |
| ----- | ---- | ----------- | ----------- |
| [Create Comprehensive README](../prompts/create-readme-comprehensive.prompt.md) | Prompt | Generate detailed README files | |
| [Create ADR](../prompts/create-architectural-decision-record.prompt.md) | Prompt | Document architectural decisions | |
| [Markdown Standards](../instructions/markdown.instructions.md) | Instruction | Documentation standards | |

---
*This collection includes 3 curated items for **Documentation Workflow**.*
```

**重要**: 表格中的連結使用 `../` 因為 Markdown 檔案在 `collections/` 目錄下。

## 精選 Collections

### ⭐ Documentation Workflow

完整的文件建立與維護工作流程。

**包含項目** (9 items):
- 📝 **8 Prompts**: 
  - Create Comprehensive README
  - Create Quick README
  - Create Architectural Decision Record
  - Create Implementation Plan
  - Update Implementation Plan
  - Update Specification
  - Documentation Writer
  - Update OO Component Documentation
  - Update Markdown File Index
- 📋 **0 Instructions**: N/A
- 🤖 **0 Agents**: N/A

**適用場景**:
- 建立新專案文件
- 維護現有文件
- 產生技術規格
- 建立 ADR 記錄

**檔案**: `collections/documentation-workflow.collection.yml` & `.md`

---

### ⭐ Code Quality & Security

程式碼品質和安全性的最佳實務指南。

**包含項目** (5 items):
- 📝 **1 Prompt**:
  - Review and Refactor
- 📋 **4 Instructions**:
  - Security and OWASP
  - Performance Optimization
  - Self-Explanatory Code Commenting
  - Containerization Docker Best Practices
- 🤖 **0 Agents**: N/A

**適用場景**:
- 程式碼審查
- 安全性檢查
- 效能優化
- 重構現有程式碼
- Docker 容器化

**檔案**: `collections/code-quality-security.collection.yml` & `.md`

---

### ⭐ DevOps Pipeline

CI/CD 與 DevOps 完整工具鏈。

**包含項目** (3 items):
- 📝 **0 Prompts**: N/A
- 📋 **2 Instructions**:
  - DevOps Core Principles
  - Spec Driven Workflow v1
- 🤖 **1 Agent**:
  - Terraform Agent

**適用場景**:
- 建立 CI/CD 流程
- 基礎設施即程式碼
- DevOps 文化導入
- 規格驅動開發

**檔案**: `collections/devops-pipeline.collection.yml` & `.md`

---

### Meta Development

用於生成 GitHub Copilot 資源的工具和 prompts。

**包含項目** (8 items):
- 📝 **8 Prompts**:
  - Agent Builder
  - Prompt Builder
  - Copilot Instructions Blueprint Generator
  - README Blueprint Generator
  - Technology Stack Blueprint Generator
  - Suggest Awesome GitHub Copilot Instructions
  - Suggest Awesome GitHub Copilot Prompts
  - Create Agents MD
- 📋 **0 Instructions**: N/A
- 🤖 **0 Agents**: N/A

**適用場景**:
- 建立自訂 agents
- 設計新的 prompts
- 產生 instruction 檔案
- 探索 awesome-copilot 資源

**檔案**: `collections/meta-development.collection.yml` & `.md`

## 如何使用 Collections

### 瀏覽 Collections

1. **查看精選 Collections** - 從最受歡迎的集合開始
2. **閱讀 Markdown 文件** - 檢視 `collections/{name}.md` 了解包含哪些項目
3. **檢查 YAML metadata** - 查看 `collections/{name}.collection.yml` 了解完整設定

### 使用 Collection 中的資源

Collection 只是**索引/參照**,實際檔案在各自的目錄中。您可以直接使用這些檔案:

#### 使用 Prompts
```
在 GitHub Copilot Chat 中輸入 / 即可看到可用的 prompts
```

#### 使用 Agents
```
在 GitHub Copilot Chat 中使用 @ 來呼叫 custom agents
```

#### 使用 Instructions
```
Instructions 會根據 applyTo 設定自動套用到相關檔案
```

### 路徑參照說明

Collection YAML 中的 `path` 是相對於專案根目錄:

```yaml
items:
  - path: prompts/create-readme-comprehensive.prompt.md  # 實際檔案位置
    kind: prompt
  - path: agents/terraform.agent.md                     # 實際檔案位置
    kind: agent
  - path: instructions/security-and-owasp.instructions.md  # 實際檔案位置
    kind: instruction
```

### 安裝到其他專案

如果要在其他專案使用這些 collections:

```bash
# 方法 1: 複製整個專案結構
cp -r /path/to/my-awesome-copilot/.github /path/to/your/project/

# 方法 2: 只複製特定類型的檔案
cp /path/to/my-awesome-copilot/.github/prompts/*.prompt.md \
   /path/to/your/project/.github/prompts/

# 方法 3: 使用符號連結 (開發模式)
ln -s /path/to/my-awesome-copilot/.github \
      /path/to/your/project/.github
```

## Collections vs 個別檔案

| 特性 | Collections | 個別檔案 |
|------|-------------|---------|
| **組織方式** | 按主題/工作流程分組 (索引/參照) | 按類型分類 (實際檔案) |
| **檔案位置** | `collections/*.yml` + `*.md` | `prompts/`, `agents/`, `instructions/` |
| **尋找資源** | 情境導向 ("我需要文件工具") | 類型導向 ("我需要一個 prompt") |
| **檔案關係** | 參照原始檔案 | 檔案本體 |
| **使用場景** | 完成特定任務或工作流程 | 單一、獨立的功能 |
| **適合對象** | 新使用者、特定專案需求 | 有經驗的使用者、客製化需求 |
| **學習曲線** | 較低 - 預先組合 | 較高 - 需要自行組合 |
| **靈活性** | 中等 - 可挑選項目 | 高 - 完全自訂 |

## 建立新的 Collection

### 步驟

1. **使用範本**: 複製 `collections/TEMPLATE.md` 作為起點

2. **建立 YAML metadata**:
   ```bash
   # 建立 {name}.collection.yml
   vi collections/my-collection.collection.yml
   ```

3. **建立 Markdown 說明**:
   ```bash
   # 建立 {name}.md
   vi collections/my-collection.md
   ```

4. **在 YAML 中參照檔案**:
   ```yaml
   id: my-collection
   name: My Collection
   description: "Collection description"
   tags:
     - tag1
     - tag2
   items:
     - path: prompts/my-prompt.prompt.md     # 使用相對路徑
       kind: prompt
     - path: agents/my-agent.agent.md
       kind: agent
   display:
     ordering: alpha
     show_badge: true
     featured: false
   ```

5. **撰寫 Markdown 文件**: 包含說明和項目表格

6. **更新本文件**: 在「精選 Collections」章節加入新的 collection (如果是 featured)

### Collection YAML 範本

```yaml
id: {unique-id}
name: {Display Name}
description: "{Brief description}"
tags:
  - tag1
  - tag2
  - tag3
items:
  - path: {relative/path/to/file.md}
    kind: {prompt|agent|instruction}
  - path: {another/file.md}
    kind: {prompt|agent|instruction}
display:
  ordering: {manual|alpha}
  show_badge: {true|false}
  featured: {true|false}
```

### Collection Markdown 範本

參考 `collections/TEMPLATE.md`:

```markdown
# {Collection Name}

{Brief description of this collection}

**Tags:** {tag1}, {tag2}, {tag3}

## Items in this Collection

| Title | Type | Description | MCP Servers |
| ----- | ---- | ----------- | ----------- |
| [{Item Title}](../path/to/file.md) | {Type} | {Description} | {MCP servers if any} |

---
*This collection includes {X} curated items for **{Collection Name}**.*
```

## 🔧 Collection 檔案格式補充說明

### YAML Metadata 完整範例

```yaml
id: unique-id
name: Display Name
description: "Brief description"
tags:
  - tag1
  - tag2
items:
  - path: prompts/file.prompt.md      # 相對路徑參照
    kind: prompt
  - path: agents/agent.agent.md
    kind: agent
  - path: instructions/instruction.instructions.md
    kind: instruction
display:
  ordering: manual    # 或 "alpha"
  show_badge: true
  featured: true
```

### Markdown 說明文件要點

參考 `TEMPLATE.md` 或任何現有的 collection 說明文件。包含:
- Collection 說明
- Tags
- Items 表格 (Title, Type, Description, MCP Servers)
- 項目總數

## 📖 路徑參照詳細說明

Collection YAML 中的 `path` 是相對於**專案根目錄**:

```yaml
items:
  - path: prompts/create-readme-comprehensive.prompt.md
    kind: prompt
```

實際檔案位置: `/Users/s462763/github/my-awesome-copilot/prompts/create-readme-comprehensive.prompt.md`

Markdown 文件中的連結使用 `../` (因為 Markdown 在 `collections/` 下):

```markdown
| [Create README](../prompts/create-readme-comprehensive.prompt.md) | Prompt | ... |
```

## 🔍 與 GitHub awesome-copilot 的對齊

本專案的 collections 結構參考 [github/awesome-copilot](https://github.com/github/awesome-copilot) 的設計:

- ✅ 使用 YAML + Markdown 雙檔案格式
- ✅ 透過相對路徑參照實際檔案
- ✅ Flat 目錄結構 (無巢狀子目錄)
- ✅ 支援 display settings (ordering, badges, featured)

這確保了與 GitHub 官方 awesome-copilot 生態系統的相容性和一致性。

## 常見問題

### Q: Collection 檔案和實際檔案的關係是什麼?

A: Collection 檔案 (YAML + MD) 是**索引/參照**,透過相對路徑指向實際檔案。實際的 prompt/agent/instruction 檔案保存在 `prompts/`, `agents/`, `instructions/` 目錄中,不會被複製到 `collections/` 目錄。

### Q: 為什麼不把檔案放在 collection 目錄下?

A: 這樣可以:
- ✅ 避免檔案重複 (一個檔案可以被多個 collections 參照)
- ✅ 保持檔案組織清晰 (按類型分類)
- ✅ 簡化檔案管理 (只需維護一份檔案)
- ✅ 符合 GitHub awesome-copilot 的設計模式

### Q: 可以一個檔案被多個 collections 參照嗎?

A: 可以! 這正是使用參照模式的優點。例如 `prompts/review-and-refactor.prompt.md` 可以同時被 "Code Quality & Security" 和 "Full-Stack Development" collections 參照。

### Q: Collection 會自動更新嗎?

A: Collection YAML/MD 檔案需要手動維護。但因為是參照模式,當實際檔案更新時,所有參照該檔案的 collections 都會自動反映最新內容。

### Q: 如何知道哪個 Collection 適合我的專案?

A: 參考每個 collection 的「適用場景」和 tags,選擇符合您專案需求的 collection。從精選 (featured) collections 開始是個好主意。

---

💡 **提示**: Collections 讓您更容易發現相關資源,但實際使用時仍然是直接使用 prompts/agents/instructions 檔案!
