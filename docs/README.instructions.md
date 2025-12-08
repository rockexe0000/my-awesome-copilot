# 📋 指令系統 (Instructions)

GitHub Copilot 自訂指令集合，用於增強特定技術和編碼實踐的行為。

> [!NOTE]
> 本專案包含 **10 個精心設計的指令檔案**，涵蓋軟體開發全生命週期。

## 目錄 / Table of Contents

- [概述](#概述)
- [如何使用指令](#如何使用指令)
  - [安裝指令](#安裝指令)
  - [整合到現有專案](#整合到現有專案)
  - [指令自動套用機制](#指令自動套用機制)
- [指令清單與詳細說明](#指令清單與詳細說明)
  - [開發流程與專案管理](#開發流程與專案管理)
  - [程式碼品質與規範](#程式碼品質與規範)
  - [安全性](#安全性)
  - [效能優化](#效能優化)
  - [DevOps 與容器化](#devops-與容器化)
- [快速參考索引](#快速參考索引)
  - [📋 依功能分類](#-依功能分類)
  - [🔍 快速搜尋表](#-快速搜尋表)
- [最佳實踐](#最佳實踐)

## 概述

My Awesome Copilot 指令系統是一套全面的 GitHub Copilot 指令集合，專為提升軟體開發效率與程式碼品質而設計。這些指令會根據檔案類型自動套用，無需手動觸發，確保開發團隊遵循一致的最佳實踐。

**核心特色：**
- ✅ **自動套用** - 根據 `applyTo` 欄位自動載入對應指令
- 🎯 **全面覆蓋** - 涵蓋開發流程、程式碼品質、安全性、效能、DevOps
- 📚 **業界標準** - 基於 OWASP、DORA、CALMS 等業界最佳實踐
- 🔧 **易於整合** - 可透過複製或 Git Submodule 整合到任何專案

## 如何使用指令

### 安裝指令

**方法 1: 直接複製檔案**

```bash
# 複製指令檔案到您的專案
cp -r .github/instructions /path/to/your/project/.github/
```

**方法 2: Git Submodule (推薦)**

```bash
# 在您的專案中加入為 submodule
cd /path/to/your/project
git submodule add https://github.com/rockexe0000/my-awesome-copilot.git .github/copilot-config

# 建立符號連結
ln -s .github/copilot-config/.github/instructions .github/instructions
```

### 整合到現有專案

GitHub Copilot 會自動讀取 `.github/instructions/` 目錄下的指令檔案。指令會根據 `applyTo` 欄位自動套用到對應的檔案類型。

**專案結構範例：**

```
your-project/
├── .github/
│   └── instructions/              # Copilot 指令目錄
│       ├── devops-core-principles.instructions.md
│       ├── security-and-owasp.instructions.md
│       ├── performance-optimization.instructions.md
│       └── ... (其他指令檔案)
├── src/
└── README.md
```

### 指令自動套用機制

每個指令檔案使用 YAML front matter 定義適用範圍：

```yaml
---
applyTo: '**/*.ts'  # 套用到所有 TypeScript 檔案
description: 'TypeScript coding standards'
---
```

**常見 `applyTo` 模式：**

| 模式 | 說明 | 範例 |
|------|------|------|
| `**` | 所有檔案 | 開發流程、安全性指令 |
| `**/*.md` | 所有 Markdown 檔案 | 文件撰寫規範 |
| `**/Dockerfile` | 所有 Dockerfile | Docker 最佳實踐 |
| `**/*.ts` | 所有 TypeScript 檔案 | TypeScript 程式碼規範 |
| `**/docker-compose*.yml` | Docker Compose 檔案 | 容器編排規範 |

## 指令清單與詳細說明

本專案包含 10 個精心設計的指令檔案，按功能分為 5 大類別。

### 開發流程與專案管理

#### spec-driven-workflow-v1.instructions.md

[查看完整檔案](../.github/instructions/spec-driven-workflow-v1.instructions.md)

- **適用範圍**: `**` (所有檔案)
- **描述**: 規格驅動工作流程 v1 提供結構化的軟體開發方法，確保需求清晰定義、設計仔細規劃、實作徹底記錄和驗證

**核心功能：**
- 六階段執行循環 (分析 ANALYZE、設計 DESIGN、實作 IMPLEMENT、驗證 VALIDATE、反思 REFLECT、交接 HANDOFF)
- EARS 表示法需求定義 (事件驅動、狀態驅動、不期望行為等)
- 詳細的實作計畫追蹤
- 基於信心分數的自適應執行策略 (高/中/低信心不同處理方式)
- 技術債務自動管理與優先級排序
- 品質保證自動化 (靜態分析、動態分析、文件檢查)
- 結構化的 Action 文件範本和 Decision Record 範本

**使用場景：**
- 開發新功能時遵循標準化流程
- 管理複雜的重構任務
- 確保需求可測試和可追溯
- 進行技術債務評估
- 建立可維護的專案文件

#### memory-bank.instructions.md

[查看完整檔案](../.github/instructions/memory-bank.instructions.md)

- **適用範圍**: `**` (所有檔案)
- **描述**: 專案知識、領域知識和偏好設定的記憶庫系統，用於在 AI 會話重置後保持專案上下文

**核心功能：**
- Memory Bank 檔案結構 (projectbrief.md, productContext.md, systemPatterns.md, techContext.md, activeContext.md, progress.md)
- 任務管理系統 (tasks/ 資料夾，包含任務索引和個別任務檔案)
- 三種工作流程模式 (Plan Mode, Act Mode, Task Management)
- 自動化文件更新機制
- 專案智能學習系統 (instructions)
- 任務命令 (add task, update task, show tasks)

**使用場景：**
- 在會話重置後快速恢復專案上下文
- 追蹤長期專案進度和決策歷史
- 管理複雜的多任務專案
- 保存和傳承專案知識
- 建立團隊共享的專案記憶

#### copilot-thought-logging.instructions.md

[查看完整檔案](../.github/instructions/copilot-thought-logging.instructions.md)

- **適用範圍**: `**` (所有檔案)
- **描述**: 在 Copilot 處理過程中查看其遵循的流程，可編輯以重塑互動或在需要後續追蹤時儲存

**核心功能：**
- 建立 `\Copilot-Processing.md` 追蹤處理過程
- 四階段執行 (初始化、規劃、執行、摘要)
- 追蹤每個階段的完成狀態
- 詳細的行動項目規劃和追蹤
- 強制執行階段順序 (不可跳過、不可合併)
- 靜默工作模式 (減少狀態更新輸出)

**使用場景：**
- 需要追蹤複雜任務的執行進度
- 多步驟任務需要系統化管理
- 需要記錄 Copilot 的決策過程
- 調試 Copilot 行為問題

### 程式碼品質與規範

#### self-explanatory-code-commenting.instructions.md

[查看完整檔案](../.github/instructions/self-explanatory-code-commenting.instructions.md)

- **適用範圍**: `**` (所有檔案)
- **描述**: GitHub Copilot 編寫註解的指南，以達到自我解釋的程式碼，減少不必要的註解

**核心功能：**
- 避免明顯、冗餘、過時的註解
- 只在必要時解釋「為什麼」(WHY)，而非「什麼」(WHAT)
- 複雜商業邏輯、非明顯演算法、正規表示式的註解指導
- API 約束和陷阱的文件化
- 公開 API 的 JSDoc/docstring 範本
- 註解標註系統 (TODO, FIXME, HACK, NOTE, WARNING, PERF, SECURITY, BUG, REFACTOR, DEPRECATED)
- 決策框架 (四個關鍵問題)
- 反模式識別 (死程式碼註解、變更日誌註解、裝飾性註解)

**使用場景：**
- 程式碼審查時評估註解品質
- 撰寫新功能時決定是否需要註解
- 重構程式碼以提高可讀性
- 建立團隊程式碼註解標準
- 清理過時或無用的註解

#### taming-copilot.instructions.md

[查看完整檔案](../.github/instructions/taming-copilot.instructions.md)

- **適用範圍**: `**` (所有檔案)
- **描述**: 防止 Copilot 在程式碼庫中造成破壞，保持其受控

**核心功能：**
- 核心指令層級 (使用者指令優先、事實驗證優於內部知識、遵循哲學)
- 僅在要求時提供程式碼區塊
- 直接簡潔的回應風格
- 遵循業界最佳實踐和標準模式
- 極簡和標準程式碼生成 (簡單優先、標準函式庫優先)
- 外科手術式程式碼修改 (保留現有程式碼、最小必要變更)
- 智慧工具使用 (宣告意圖、專注於目標)

**使用場景：**
- 需要精確控制 Copilot 行為
- 避免不必要的程式碼重構
- 確保最小化程式碼變更
- 維護現有程式碼結構和風格
- 防止過度工程化

#### markdown.instructions.md

[查看完整檔案](../.github/instructions/markdown.instructions.md)

- **適用範圍**: `**/*.md`
- **描述**: 文件和內容建立標準

**核心功能：**
- Markdown 格式規範 (標題層級、清單格式、程式碼區塊、連結、圖片、表格)
- 行長度限制 (最多 400 字元)
- YAML front matter 要求 (description, applyTo 等)
- 文件結構最佳實踐
- 驗證需求和檢查清單

**使用場景：**
- 撰寫專案文件
- 建立技術部落格文章
- 維護 README 檔案
- 生成規格文件
- 確保文件格式一致性

### 安全性

#### security-and-owasp.instructions.md

[查看完整檔案](../.github/instructions/security-and-owasp.instructions.md)

- **適用範圍**: `*` (所有檔案)
- **描述**: 基於 OWASP Top 10 和業界最佳實務的全面安全編碼指令，適用於所有語言和框架

**核心功能：**
- A01: 存取控制和 SSRF 防護 (最小權限原則、預設拒絕、URL 驗證、路徑遍歷防護)
- A02: 加密失敗防範 (強演算法、傳輸加密、靜態加密、金鑰管理)
- A03: 注入攻擊防護 (參數化查詢、命令列清理、XSS 防護)
- A05: 安全配置 (預設安全、安全標頭)
- A06: 元件漏洞管理 (依賴項更新、漏洞掃描)
- A07: 身份驗證和會話管理 (會話固定防護、安全 Cookie、暴力破解防護)
- A08: 資料完整性 (反序列化安全)

**使用場景：**
- 實施安全的使用者認證系統
- 保護 API 端點免受攻擊
- 防止 SQL 注入和 XSS 攻擊
- 管理敏感資料和金鑰
- 進行安全程式碼審查
- 建立安全編碼標準

### 效能優化

#### performance-optimization.instructions.md

[查看完整檔案](../.github/instructions/performance-optimization.instructions.md)

- **適用範圍**: `*` (所有檔案)
- **描述**: 針對所有語言、框架和堆疊的最全面、實用的效能優化指令，涵蓋前端、後端和資料庫最佳實務

**核心功能：**
- 一般原則 (先測量後優化、優化常見情況、避免過早優化)
- 前端效能 (DOM 操作、渲染優化、資源優化、網路優化、JavaScript 效能)
- 後端效能 (演算法和資料結構、平行處理、快取策略、API 優化)
- 資料庫效能 (查詢優化、索引策略、架構設計、交易管理)
- 框架特定技巧 (React, Angular, Vue, Node.js, Python, Java, .NET)
- 程式碼審查檢查清單
- 進階主題 (效能分析、記憶體管理、擴展性、行動裝置效能)
- 實際範例和反模式

**使用場景：**
- 優化網頁載入速度
- 減少 API 回應時間
- 改善資料庫查詢效能
- 進行效能瓶頸分析
- 記憶體洩漏偵測和修復
- 建立效能測試基準

### DevOps 與容器化

#### devops-core-principles.instructions.md

[查看完整檔案](../.github/instructions/devops-core-principles.instructions.md)

- **適用範圍**: `*` (所有檔案)
- **描述**: 涵蓋核心 DevOps 原則、文化 (CALMS) 和關鍵指標 (DORA) 的基礎指令，指導 GitHub Copilot 理解和推廣有效的軟體交付

**核心功能：**
- CALMS 框架詳解:
  - C - Culture (文化): 協作、無責難、共同責任、持續學習
  - A - Automation (自動化): CI/CD、IaC、測試自動化、安全自動化
  - L - Lean (精實): 消除浪費、最大化流程、價值流映射
  - M - Measurement (測量): KPI、監控、儀表板、實驗
  - S - Sharing (分享): 知識分享、工具共用、跨職能團隊
- DORA 四大指標:
  - 部署頻率 (Deployment Frequency)
  - 變更前置時間 (Lead Time for Changes)
  - 變更失敗率 (Change Failure Rate)
  - 平均修復時間 (Mean Time to Recovery)
- DevOps 定義和文化轉型指導

**使用場景：**
- 設計 CI/CD 流程
- 建立自動化測試策略
- 實施基礎設施即程式碼 (IaC)
- 優化部署流程
- 改善團隊協作和溝通

#### containerization-docker-best-practices.instructions.md

[查看完整檔案](../.github/instructions/containerization-docker-best-practices.instructions.md)

- **適用範圍**: `**/Dockerfile`, `**/Dockerfile.*`, `**/*.dockerfile`, `**/docker-compose*.yml`, `**/docker-compose*.yaml`
- **描述**: Docker 容器化與映像優化的完整最佳實務指南，涵蓋多階段建構、映像層優化、安全掃描和執行時最佳實務

**核心功能：**
- 多階段建構實作 (減少映像大小、分離建構和執行環境)
- 映像層優化策略 (快取利用、指令順序)
- 安全掃描和漏洞管理
- 基礎映像選擇 (Alpine, Distroless)
- 執行時最佳實務 (非 root 使用者、健康檢查)
- Docker Compose 最佳實務
- 資源限制和監控
- 容器監控和日誌

**使用場景：**
- 建立 Dockerfile 時確保遵循最佳實務
- 優化 Docker 映像大小
- 提升容器安全性
- 設定多容器應用程式 (docker-compose)
- 設定生產環境容器編排

## 快速參考索引

### 📋 依功能分類

#### 開發流程與專案管理
- [Spec-driven Workflow](#spec-driven-workflow-v1instructionsmd) - 規格驅動的六階段開發循環
- [Memory Bank](#memory-bankinstructionsmd) - 專案上下文與進度追蹤系統
- [Copilot Thought Logging](#copilot-thought-logginginstructionsmd) - Copilot 處理過程追蹤

#### 程式碼品質與規範
- [Self-explanatory Code Commenting](#self-explanatory-code-commentinginstructionsmd) - 自我解釋的程式碼註解指南
- [Taming Copilot](#taming-copilotinstructionsmd) - 精確控制 Copilot 行為
- [Markdown](#markdowninstructionsmd) - Markdown 文件撰寫規範

#### 安全性
- [Security and OWASP](#security-and-owaspinstructionsmd) - OWASP Top 10 安全編碼實踐

#### 效能優化
- [Performance Optimization](#performance-optimizationinstructionsmd) - 全方位效能最佳化指南

#### DevOps 與容器化
- [DevOps Core Principles](#devops-core-principlesinstructionsmd) - DevOps 核心原則與 DORA 指標
- [Containerization Docker Best Practices](#containerization-docker-best-practicesinstructionsmd) - Docker 容器化最佳實踐

### 🔍 快速搜尋表

| 我想要... | 使用這個檔案 |
|----------|-------------|
| 追蹤專案進度 | [memory-bank.instructions.md](#memory-bankinstructionsmd) |
| 提升程式碼安全性 | [security-and-owasp.instructions.md](#security-and-owaspinstructionsmd) |
| 優化應用效能 | [performance-optimization.instructions.md](#performance-optimizationinstructionsmd) |
| 設定 Docker 容器 | [containerization-docker-best-practices.instructions.md](#containerization-docker-best-practicesinstructionsmd) |
| 遵循 DevOps 實踐 | [devops-core-principles.instructions.md](#devops-core-principlesinstructionsmd) |
| 規範程式碼註解 | [self-explanatory-code-commenting.instructions.md](#self-explanatory-code-commentinginstructionsmd) |
| 控制 Copilot 行為 | [taming-copilot.instructions.md](#taming-copilotinstructionsmd) |
| 遵循開發流程 | [spec-driven-workflow-v1.instructions.md](#spec-driven-workflow-v1instructionsmd) |
| 追蹤 Copilot 處理過程 | [copilot-thought-logging.instructions.md](#copilot-thought-logginginstructionsmd) |
| 撰寫 Markdown 文件 | [markdown.instructions.md](#markdowninstructionsmd) |

## 最佳實踐

### 指令檔案自訂

1. **根據專案需求調整**：修改指令檔案中的技術堆疊和架構模式
2. **保持版本同步**：確保指令與專案使用的框架版本一致
3. **團隊協作**：讓團隊成員共同維護和改進指令
4. **定期更新**：隨著專案演進，定期檢視和更新指令內容

### 指令優先級與衝突解決

當多個指令檔案的 `applyTo` 模式重疊時，GitHub Copilot 會合併這些指令。如果出現衝突：

- 更具體的 `applyTo` 模式優先於通用模式
- 專案特定的指令優先於通用指令
- 後載入的指令可能覆蓋先前的設定

**建議：**
- 避免在不同指令檔案中設定互相矛盾的規則
- 使用明確的 `applyTo` 模式減少重疊
- 在團隊中建立清晰的指令優先級規範

### 版本控制建議

**建議納入版本控制的檔案：**
- ✅ `.github/instructions/*.instructions.md` - 所有指令檔案
- ✅ `memory-bank/` - Memory Bank 檔案 (專案知識)
- ✅ `docs/` - 專案文件

**建議排除版本控制的檔案：**
- ❌ `Copilot-Processing.md` - 暫時性追蹤檔案
- ❌ `.agent_work/` - 中間產物和日誌
- ❌ 個人化的 Copilot 設定檔

**`.gitignore` 範例：**

```gitignore
# Copilot temporary files
Copilot-Processing.md
.agent_work/

# Personal Copilot settings (if any)
.copilot-personal/
```

---

💡 **需要協助？** 回到 [主 README](../README.md) 查看更多資源和範例。
