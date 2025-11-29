# My Awesome Copilot

一個精心設計的 GitHub Copilot 指令和提示集合，旨在提升開發者體驗並促進最佳實踐的採用。

[![License](https://img.shields.io/badge/License-MIT-yellow?style=flat-square)](LICENSE)
[![GitHub Issues](https://img.shields.io/github/issues/rockexe0000/my-awesome-copilot?style=flat-square)](https://github.com/rockexe0000/my-awesome-copilot/issues)
[![GitHub Stars](https://img.shields.io/github/stars/rockexe0000/my-awesome-copilot?style=flat-square)](https://github.com/rockexe0000/my-awesome-copilot/stargazers)

## 概述

My Awesome Copilot 是一個全面的 GitHub Copilot 指令和提示系統，設計用於：

- **標準化開發實踐**：通過一致的指令確保程式碼品質和架構決策
- **提升開發效率**：提供現成的提示範本來處理常見的開發任務
- **促進最佳實踐**：整合 DevOps、安全性、效能最佳化等業界標準
- **增強程式碼品質**：透過自動化檢查和建議來維持高程式碼標準

## 特色功能

- **🔧 全面的指令系統**：涵蓋 DevOps、安全性、效能、檔案規範等各個面向
- **📝 豐富的提示範本**：預建的提示檔案用於常見開發工作流程
- **🏗️ 架構藍圖產生器**：自動化專案架構和技術堆疊檔案建立
- **🔄 記憶體銀行系統**：維持專案上下文和進度追蹤
- **📋 規格驅動工作流程**：結構化的開發方法，從需求到實作
- **🛡️ 安全優先**：整合 OWASP 指南和安全編碼實踐
- **⚡ 效能最佳化**：內建效能最佳化指導原則

## 目錄 / Table of Contents

- [概述](#概述)
- [特色功能](#特色功能)
- [快速開始](#快速開始)
  - [使用方式](#使用方式)
  - [整合到現有專案](#整合到現有專案)
- [快速參考索引](#快速參考索引)
  - [📋 依功能分類](#-依功能分類)
    - [開發流程與專案管理](#開發流程與專案管理)
    - [程式碼品質與規範](#程式碼品質與規範)
    - [安全性](#安全性)
    - [效能優化](#效能優化)
    - [DevOps 與容器化](#devops-與容器化)
    - [文件與藍圖產生](#文件與藍圖產生)
    - [開發輔助工具](#開發輔助工具)
  - [🔍 快速搜尋表](#-快速搜尋表)
- [核心組件](#核心組件)
  - [🔧 指令系統 (Instructions)](#-指令系統-instructions)
    - [開發流程與專案管理](#開發流程與專案管理-1)
      - [spec-driven-workflow-v1.instructions.md](#spec-driven-workflow-v1instructionsmd)
      - [memory-bank.instructions.md](#memory-bankinstructionsmd)
      - [copilot-thought-logging.instructions.md](#copilot-thought-logginginstructionsmd)
    - [程式碼品質與規範](#程式碼品質與規範-1)
      - [self-explanatory-code-commenting.instructions.md](#self-explanatory-code-commentinginstructionsmd)
      - [taming-copilot.instructions.md](#taming-copilotinstructionsmd)
      - [markdown.instructions.md](#markdowninstructionsmd)
    - [安全性](#安全性-1)
      - [security-and-owasp.instructions.md](#security-and-owaspinstructionsmd)
    - [效能優化](#效能優化-1)
      - [performance-optimization.instructions.md](#performance-optimizationinstructionsmd)
    - [DevOps 與容器化](#devops-與容器化-1)
      - [devops-core-principles.instructions.md](#devops-core-principlesinstructionsmd)
      - [containerization-docker-best-practices.instructions.md](#containerization-docker-best-practicesinstructionsmd)
  - [📝 提示範本 (Prompts)](#-提示範本-prompts)
    - [文件與藍圖產生](#文件與藍圖產生-1)
      - [create-readme-comprehensive.prompt.md ⭐](#create-readme-comprehensivepromptmd--推薦)
      - [create-readme-quick.prompt.md](#create-readme-quickpromptmd)
      - [copilot-instructions-blueprint-generator.prompt.md](#copilot-instructions-blueprint-generatorpromptmd)
      - [readme-blueprint-generator.prompt.md](#readme-blueprint-generatorpromptmd)
      - [technology-stack-blueprint-generator.prompt.md](#technology-stack-blueprint-generatorpromptmd)
      - [create-agents.md.prompt.md](#create-agentsmdpromptmd)
      - [create-architectural-decision-record.prompt.md](#create-architectural-decision-recordpromptmd)
      - [documentation-writer.prompt.md](#documentation-writerpromptmd)
    - [開發輔助工具](#開發輔助工具-1)
      - [conventional-commit.prompt.md](#conventional-commitpromptmd)
      - [create-implementation-plan.prompt.md](#create-implementation-planpromptmd)
      - [update-implementation-plan.prompt.md](#update-implementation-planpromptmd)
      - [update-specification.prompt.md](#update-specificationpromptmd)
      - [prompt-builder.prompt.md](#prompt-builderpromptmd)
    - [程式碼品質與維護](#程式碼品質與維護)
      - [review-and-refactor.prompt.md](#review-and-refactorpromptmd)
      - [update-markdown-file-index.prompt.md](#update-markdown-file-indexpromptmd)
      - [update-oo-component-documentation.prompt.md](#update-oo-component-documentationpromptmd)
    - [專案發現與建議](#專案發現與建議)
      - [suggest-awesome-github-copilot-instructions.prompt.md](#suggest-awesome-github-copilot-instructionspromptmd)
      - [suggest-awesome-github-copilot-prompts.prompt.md](#suggest-awesome-github-copilot-promptspromptmd)
- [使用範例](#使用範例)
  - [情境 1: 開始新專案](#情境-1-開始新專案)
  - [情境 2: 開發新功能](#情境-2-開發新功能)
  - [情境 3: 提升程式碼品質](#情境-3-提升程式碼品質)
  - [情境 4: 容器化部署](#情境-4-容器化部署)
  - [情境 5: 標準化 Git 工作流程](#情境-5-標準化-git-工作流程)
- [最佳實踐](#最佳實踐)
  - [指令檔案自訂](#指令檔案自訂)
  - [提示有效使用](#提示有效使用)
- [進階功能](#進階功能)
  - [記憶體銀行系統](#記憶體銀行系統)
  - [規格驅動工作流程](#規格驅動工作流程)
- [貢獻](#貢獻)
- [支援](#支援)
- [授權](#授權)

## 快速開始

### 使用方式

1. **複製專案結構**：
   ```bash
   git clone https://github.com/rockexe0000/my-awesome-copilot.git
   cd my-awesome-copilot
   ```

2. **將指令檔案複製到您的專案**：
   ```bash
   cp -r .github/instructions /path/to/your/project/.github/
   ```

3. **根據需求自訂提示**：
   ```bash
   cp -r .github/prompts /path/to/your/project/.github/
   ```

### 整合到現有專案

在您的專案根目錄中建立 `.github` 資料夾結構：

```
.github/
├── instructions/          # GitHub Copilot 指令檔案
│   ├── devops-core-principles.instructions.md
│   ├── security-and-owasp.instructions.md
│   ├── performance-optimization.instructions.md
│   └── ...
└── prompts/              # 提示範本
    ├── create-readme.prompt.md
    ├── copilot-instructions-blueprint-generator.prompt.md
    └── ...
```

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

#### 文件與藍圖產生
- [Create README](#create-readmepromptmd) - 自動產生專案 README
- [Copilot Instructions Blueprint Generator](#copilot-instructions-blueprint-generatorpromptmd) - 產生 Copilot 指令檔案
- [README Blueprint Generator](#readme-blueprint-generatorpromptmd) - 基於現有文件產生 README
- [Technology Stack Blueprint Generator](#technology-stack-blueprint-generatorpromptmd) - 技術堆疊文件產生器

#### 開發輔助工具
- [Conventional Commit](#conventional-commitpromptmd) - 標準化 Git 提交訊息
- [Create Implementation Plan](#create-implementation-planpromptmd) - 建立實作計劃
- [Create Architectural Decision Record](#create-architectural-decision-recordpromptmd) - 建立 ADR 文件

### 🔍 快速搜尋表

| 我想要... | 使用這個檔案 |
|----------|-------------|
| 建立繁中雙語 README (推薦) | [create-readme-comprehensive.prompt.md](#create-readme-comprehensivepromptmd-推薦) |
| 建立英文 README (快速) | [create-readme-quick.prompt.md](#create-readme-quickpromptmd) |
| 設定 Copilot 指令 | [copilot-instructions-blueprint-generator.prompt.md](#copilot-instructions-blueprint-generatorpromptmd) |
| 追蹤專案進度 | [memory-bank.instructions.md](#memory-bankinstructionsmd) |
| 提升程式碼安全性 | [security-and-owasp.instructions.md](#security-and-owaspinstructionsmd) |
| 優化應用效能 | [performance-optimization.instructions.md](#performance-optimizationinstructionsmd) |
| 標準化 Git 提交 | [conventional-commit.prompt.md](#conventional-commitpromptmd) |
| 建立實作計劃 | [create-implementation-plan.prompt.md](#create-implementation-planpromptmd) |
| 審查和重構程式碼 | [review-and-refactor.prompt.md](#review-and-refactorpromptmd) |
| 設定 Docker 容器 | [containerization-docker-best-practices.instructions.md](#containerization-docker-best-practicesinstructionsmd) |
| 遵循 DevOps 實踐 | [devops-core-principles.instructions.md](#devops-core-principlesinstructionsmd) |

## 核心組件

本專案包含完整的 GitHub Copilot 指令系統和提示範本,按功能分類如下:

### 🔧 指令系統 (Instructions)

#### 開發流程與專案管理

##### spec-driven-workflow-v1.instructions.md

[查看完整檔案](.github/instructions/spec-driven-workflow-v1.instructions.md)

- **適用範圍**: `**` (所有檔案)
- **描述**: 規格驅動工作流程 v1 提供結構化的軟體開發方法,確保需求清晰定義、設計仔細規劃、實作徹底記錄和驗證
- **核心功能**:
  - 六階段執行循環 (分析 ANALYZE、設計 DESIGN、實作 IMPLEMENT、驗證 VALIDATE、反思 REFLECT、交接 HANDOFF)
  - EARS 表示法需求定義 (事件驅動、狀態驅動、不期望行為等)
  - 詳細的實作計畫追蹤
  - 基於信心分數的自適應執行策略 (高/中/低信心不同處理方式)
  - 技術債務自動管理與優先級排序
  - 品質保證自動化 (靜態分析、動態分析、文件檢查)
  - 結構化的 Action 文件範本和 Decision Record 範本
- **使用場景**:
  - 開發新功能時遵循標準化流程
  - 管理複雜的重構任務
  - 確保需求可測試和可追溯
  - 進行技術債務評估
  - 建立可維護的專案文件

##### memory-bank.instructions.md

[查看完整檔案](.github/instructions/memory-bank.instructions.md)

- **適用範圍**: `**` (所有檔案)
- **描述**: 專案知識、領域知識和偏好設定的記憶庫系統,用於在 AI 會話重置後保持專案上下文
- **核心功能**:
  - Memory Bank 檔案結構 (projectbrief.md, productContext.md, systemPatterns.md, techContext.md, activeContext.md, progress.md)
  - 任務管理系統 (tasks/ 資料夾,包含任務索引和個別任務檔案)
  - 三種工作流程模式 (Plan Mode, Act Mode, Task Management)
  - 自動化文件更新機制
  - 專案智能學習系統 (instructions)
  - 任務命令 (add task, update task, show tasks)
- **使用場景**:
  - 在會話重置後快速恢復專案上下文
  - 追蹤長期專案進度和決策歷史
  - 管理複雜的多任務專案
  - 保存和傳承專案知識
  - 建立團隊共享的專案記憶

##### copilot-thought-logging.instructions.md

[查看完整檔案](.github/instructions/copilot-thought-logging.instructions.md)

- **適用範圍**: `**` (所有檔案)
- **描述**: 在 Copilot 處理過程中查看其遵循的流程,可編輯以重塑互動或在需要後續追蹤時儲存
- **核心功能**:
  - 建立 `\Copilot-Processing.md` 追蹤處理過程
  - 四階段執行 (初始化、規劃、執行、摘要)
  - 追蹤每個階段的完成狀態
  - 詳細的行動項目規劃和追蹤
  - 強制執行階段順序 (不可跳過、不可合併)
  - 靜默工作模式 (減少狀態更新輸出)
- **使用場景**:
  - 需要追蹤複雜任務的執行進度
  - 多步驟任務需要系統化管理
  - 需要記錄 Copilot 的決策過程
  - 調試 Copilot 行為問題

#### 程式碼品質與規範

##### self-explanatory-code-commenting.instructions.md

[查看完整檔案](.github/instructions/self-explanatory-code-commenting.instructions.md)

- **適用範圍**: `**` (所有檔案)
- **描述**: GitHub Copilot 編寫註解的指南,以達到自我解釋的程式碼,減少不必要的註解
- **核心功能**:
  - 避免明顯、冗餘、過時的註解
  - 只在必要時解釋「為什麼」(WHY),而非「什麼」(WHAT)
  - 複雜商業邏輯、非明顯演算法、正規表示式的註解指導
  - API 約束和陷阱的文件化
  - 公開 API 的 JSDoc/docstring 範本
  - 註解標註系統 (TODO, FIXME, HACK, NOTE, WARNING, PERF, SECURITY, BUG, REFACTOR, DEPRECATED)
  - 決策框架 (四個關鍵問題)
  - 反模式識別 (死程式碼註解、變更日誌註解、裝飾性註解)
- **使用場景**:
  - 程式碼審查時評估註解品質
  - 撰寫新功能時決定是否需要註解
  - 重構程式碼以提高可讀性
  - 建立團隊程式碼註解標準
  - 清理過時或無用的註解

##### taming-copilot.instructions.md

[查看完整檔案](.github/instructions/taming-copilot.instructions.md)

- **適用範圍**: `**` (所有檔案)
- **描述**: 防止 Copilot 在程式碼庫中造成破壞,保持其受控
- **核心功能**:
  - 核心指令層級 (使用者指令優先、事實驗證優於內部知識、遵循哲學)
  - 僅在要求時提供程式碼區塊
  - 直接簡潔的回應風格
  - 遵循業界最佳實踐和標準模式
  - 極簡和標準程式碼生成 (簡單優先、標準函式庫優先)
  - 外科手術式程式碼修改 (保留現有程式碼、最小必要變更)
  - 智慧工具使用 (宣告意圖、專注於目標)
- **使用場景**:
  - 需要精確控制 Copilot 行為
  - 避免不必要的程式碼重構
  - 確保最小化程式碼變更
  - 維護現有程式碼結構和風格
  - 防止過度工程化

##### markdown.instructions.md

[查看完整檔案](.github/instructions/markdown.instructions.md)

- **適用範圍**: `**/*.md`
- **描述**: 文件和內容建立標準
- **核心功能**:
  - Markdown 格式規範 (標題層級、清單格式、程式碼區塊、連結、圖片、表格)
  - 行長度限制 (最多 400 字元)
  - YAML front matter 要求 (description, applyTo 等)
  - 文件結構最佳實踐
  - 驗證需求和檢查清單
- **使用場景**:
  - 撰寫專案文件
  - 建立技術部落格文章
  - 維護 README 檔案
  - 生成規格文件
  - 確保文件格式一致性

#### 安全性

##### security-and-owasp.instructions.md

[查看完整檔案](.github/instructions/security-and-owasp.instructions.md)

- **適用範圍**: `*` (所有檔案)
- **描述**: 基於 OWASP Top 10 和業界最佳實務的全面安全編碼指令,適用於所有語言和框架
- **核心功能**:
  - A01: 存取控制和 SSRF 防護 (最小權限原則、預設拒絕、URL 驗證、路徑遍歷防護)
  - A02: 加密失敗防範 (強演算法、傳輸加密、靜態加密、金鑰管理)
  - A03: 注入攻擊防護 (參數化查詢、命令列清理、XSS 防護)
  - A05: 安全配置 (預設安全、安全標頭)
  - A06: 元件漏洞管理 (依賴項更新、漏洞掃描)
  - A07: 身份驗證和會話管理 (會話固定防護、安全 Cookie、暴力破解防護)
  - A08: 資料完整性 (反序列化安全)
- **使用場景**:
  - 實施安全的使用者認證系統
  - 保護 API 端點免受攻擊
  - 防止 SQL 注入和 XSS 攻擊
  - 管理敏感資料和金鑰
  - 進行安全程式碼審查
  - 建立安全編碼標準

#### 效能優化

##### performance-optimization.instructions.md

[查看完整檔案](.github/instructions/performance-optimization.instructions.md)

- **適用範圍**: `*` (所有檔案)
- **描述**: 針對所有語言、框架和堆疊的最全面、實用的效能優化指令,涵蓋前端、後端和資料庫最佳實務
- **核心功能**:
  - 一般原則 (先測量後優化、優化常見情況、避免過早優化)
  - 前端效能 (DOM 操作、渲染優化、資源優化、網路優化、JavaScript 效能)
  - 後端效能 (演算法和資料結構、平行處理、快取策略、API 優化)
  - 資料庫效能 (查詢優化、索引策略、架構設計、交易管理)
  - 框架特定技巧 (React, Angular, Vue, Node.js, Python, Java, .NET)
  - 程式碼審查檢查清單
  - 進階主題 (效能分析、記憶體管理、擴展性、行動裝置效能)
  - 實際範例和反模式
- **使用場景**:
  - 優化網頁載入速度
  - 減少 API 回應時間
  - 改善資料庫查詢效能
  - 進行效能瓶頸分析
  - 記憶體洩漏偵測和修復
  - 建立效能測試基準

#### DevOps 與容器化

##### devops-core-principles.instructions.md

[查看完整檔案](.github/instructions/devops-core-principles.instructions.md)

- **適用範圍**: `*` (所有檔案)
- **描述**: 涵蓋核心 DevOps 原則、文化 (CALMS) 和關鍵指標 (DORA) 的基礎指令,指導 GitHub Copilot 理解和推廣有效的軟體交付
- **核心功能**:
  - CALMS 框架詳解:
    - Culture (文化): 協作、無責備、共同責任、持續學習
    - Automation (自動化): CI/CD、IaC、配置管理、自動化測試
    - Lean (精實): 消除浪費、最大化流程、價值流映射
    - Measurement (測量): KPI、監控、儀表板、實驗
    - Sharing (分享): 知識共享、工具平台、跨功能團隊
  - DORA 四大指標:
    - Deployment Frequency (部署頻率) - 目標: 每日多次
    - Lead Time for Changes (變更前置時間) - 目標: < 1 小時
    - Change Failure Rate (變更失敗率) - 目標: 0-15%
    - Mean Time to Recovery (平均恢復時間) - 目標: < 1 小時
  - DevOps 定義和文化轉型指導
- **使用場景**:
  - 設計 CI/CD 流程
  - 評估團隊軟體交付效能
  - 建立自動化部署流程
  - 實施監控和測量機制
  - 推動 DevOps 文化轉型
  - 改善團隊協作和溝通

##### containerization-docker-best-practices.instructions.md

[查看完整檔案](.github/instructions/containerization-docker-best-practices.instructions.md)

- **適用範圍**: `**/Dockerfile`, `**/Dockerfile.*`, `**/*.dockerfile`, `**/docker-compose*.yml`, `**/docker-compose*.yaml`
- **描述**: Docker 容器化與映像優化的完整最佳實務指南,涵蓋多階段建構、映像層優化、安全掃描和執行時最佳實務
- **核心功能**:
  - 多階段建構實作 (減少映像大小、分離建構和執行環境)
  - 基礎映像選擇與優化 (Alpine vs Distroless, 版本固定)
  - 映像層優化 (層快取、指令排序、.dockerignore)
  - 安全性最佳實踐 (非 root 使用者、掃描工具、金鑰管理)
  - 資源管理 (CPU/記憶體限制、健康檢查)
  - 網路配置 (網路模式、服務發現)
  - Docker Compose 編排
  - 容器監控和日誌
- **使用場景**:
  - 建立 Dockerfile 時確保遵循最佳實務
  - 優化現有容器映像大小和安全性
  - 設計微服務容器架構
  - 實施 CI/CD 容器化流程
  - 進行容器安全審計
  - 設定生產環境容器編排

### 📝 提示範本 (Prompts)

#### 文件與藍圖產生

##### create-readme-comprehensive.prompt.md ⭐ 推薦

[查看完整檔案](.github/prompts/create-readme-comprehensive.prompt.md)

- **用途**: 智慧型雙語 README 產生器,支援複雜度自動偵測與深度調整 (繁中優先)
- **功能**:
  - **智慧複雜度偵測**: 自動分析專案規模 (檔案數、目錄深度、相依套件、Monorepo 等)
  - **自動深度調整**: 根據複雜度選擇適當深度 (Minimal/Standard/Comprehensive)
  - **雙語支援**: 繁體中文為主,英文為輔
    - H1-H2 標題雙語: `專案名稱 / Project Name`
    - 程式碼註解雙語: `// 繁中 (English)`
    - 錯誤訊息雙語: `'繁中 / English'`
  - **Mermaid 圖表**: 自動產生架構圖、資料流程圖、時序圖
  - **Monorepo 支援**: 自動偵測並適配 Monorepo 架構
  - **情境調整**: 公開專案、企業專案等不同規則
  - **GFM 完整支援**: GitHub admonitions, tables, task lists
- **三種深度級別**:
  - **Minimal** (小型專案): 5 核心章節, 500-1000 字, 無圖表
  - **Standard** (中型專案): 10+ 章節, 1500-3000 字, 1-2 圖表
  - **Comprehensive** (大型專案): 20+ 章節, 3000-6000 字, 5-10 圖表
- **使用方式**:
  ```bash
  # 在 GitHub Copilot Chat 中使用
  @workspace /create-readme-comprehensive
  ```
- **使用時機**: 
  - 繁體中文專案
  - 需要雙語文件
  - 中大型專案或 Monorepo
  - 需要架構圖和詳細文件
  - 企業級專案

**複雜度偵測原理:**

使用多指標加權算法自動偵測專案複雜度:

```python
complexity_score = (
    file_count_score      * 30% +  # 檔案數量
    directory_depth_score * 15% +  # 目錄深度
    dependency_count      * 25% +  # 相依套件數量
    language_diversity    * 15% +  # 程式語言多樣性
    monorepo_bonus        * 10% +  # Monorepo 加成
    config_complexity     * 5%     # 配置檔複雜度
)
```

**級別對應表:**

| 分數範圍 | 複雜度級別 | 自動深度 | 範例 |
|---------|----------|---------|------|
| 0-34 | SMALL (小型) | Minimal | 個人工具、簡單腳本 |
| 35-64 | MEDIUM (中型) | Standard | 團隊專案、API 服務 |
| 65-100 | LARGE (大型) | Comprehensive | 企業平台、Monorepo |

**判斷指標:**

| 指標 | SMALL | MEDIUM | LARGE |
|------|-------|--------|-------|
| 程式碼檔案數 | < 20 | 20-100 | > 100 |
| 目錄深度 | < 3 層 | 3-5 層 | > 5 層 |
| 相依套件 | < 10 個 | 10-50 個 | > 50 個 |
| 程式語言 | 1 種 | 2-3 種 | > 3 種 |
| Monorepo | ❌ | 可能 | ✅ |

**雙語策略範例:**

標題雙語:
```markdown
# H1 標題使用雙語 / H1 Title Uses Bilingual
## H2 標題也是雙語 / H2 Title Also Bilingual
### H3 標題僅繁中
```

程式碼註解雙語:
```typescript
// 使用者介面 (User interface)
interface User {
  id: string;     // ID
  name: string;   // 姓名 (Name)
}

// 建立使用者 (Create user)
function createUser(data: User): void {
  if (!data.name) {
    throw new Error('姓名為必填 / Name is required');
  }
}
```

##### create-readme-quick.prompt.md

[查看完整檔案](.github/prompts/create-readme-quick.prompt.md)

- **用途**: 快速產生英文 README (簡潔版)
- **功能**:
  - 純英文輸出
  - 參考優秀開源專案範例 (Azure Samples, sinedied 專案)
  - 使用 GFM (GitHub Flavored Markdown) 格式
  - 簡潔明瞭的結構
  - 自動偵測 Logo/Icon
  - 適度使用 emoji
- **使用方式**:
  ```bash
  # 在 GitHub Copilot Chat 中使用
  @workspace /create-readme-quick
  ```
- **使用時機**: 
  - 國際開源專案
  - 需要快速產生英文文件
  - 小型簡單專案
  - 追求簡潔性

**選擇建議:**

| 需求 | 推薦 Prompt |
|------|------------|
| 英文國際開源專案 | `create-readme-quick` |
| 繁體中文專案 | `create-readme-comprehensive` ⭐ |
| 需要雙語文件 | `create-readme-comprehensive` ⭐ |
| 小型簡單專案 | `create-readme-quick` |
| 中大型專案 | `create-readme-comprehensive` ⭐ |
| 需要架構圖 | `create-readme-comprehensive` ⭐ |
| Monorepo 專案 | `create-readme-comprehensive` ⭐ |
| 企業專案 | `create-readme-comprehensive` ⭐ |

##### copilot-instructions-blueprint-generator.prompt.md

[查看完整檔案](.github/prompts/copilot-instructions-blueprint-generator.prompt.md)

- **用途**: 建立全面的 copilot-instructions.md 檔案,指導 GitHub Copilot 產生符合專案標準的程式碼
- **功能**:
  - 技術版本精確偵測 (語言、框架、函式庫版本)
  - 程式碼庫模式分析 (命名慣例、架構模式、錯誤處理)
  - 架構一致性維護
  - 特定技術指南生成
  - 自動化文件結構
- **使用時機**: 需要為新專案或現有專案建立 Copilot 指令檔案時

##### readme-blueprint-generator.prompt.md

[查看完整檔案](.github/prompts/readme-blueprint-generator.prompt.md)

- **用途**: 透過分析專案文件結構建立全面的 README.md
- **功能**:
  - 掃描 `.github/copilot` 目錄檔案
  - 提取專案資訊、技術堆疊、架構
  - 生成結構良好的 Markdown 文件
  - 自動化索引和連結生成
- **使用時機**: 需要基於現有文件自動生成 README 時

##### technology-stack-blueprint-generator.prompt.md

[查看完整檔案](.github/prompts/technology-stack-blueprint-generator.prompt.md)

- **用途**: 分析程式碼庫以建立詳細的架構文件,自動偵測技術堆疊
- **功能**:
  - 技術識別 (語言、框架、函式庫版本)
  - 實作模式和慣例文件化
  - 使用範例提取
  - 技術關係圖生成
  - 相依性分析
- **使用時機**: 需要為專案建立全面的技術堆疊文件時

##### create-agents.md.prompt.md

[查看完整檔案](.github/prompts/create-agentsmd.prompt.md)

- **用途**: 為儲存庫建立高品質的 AGENTS.md 檔案
- **功能**:
  - 遵循 agents.md 公開格式
  - 提供專案概述、設定命令、開發工作流程
  - 包含測試指令、程式碼風格指南、建構和部署資訊
  - AI 代理優化的結構化內容
- **使用時機**: 需要為 AI 編碼代理提供專案上下文和指令時

##### create-architectural-decision-record.prompt.md

[查看完整檔案](.github/prompts/create-architectural-decision-record.prompt.md)

- **用途**: 建立針對 AI 優化的架構決策記錄 (ADR) 文件
- **功能**:
  - 使用標準化 ADR 格式
  - 記錄決策、替代方案、後果
  - 包含實作註記和參考資料
  - 版本控制和追蹤
- **使用時機**: 需要記錄重要的架構決策時

##### documentation-writer.prompt.md

[查看完整檔案](.github/prompts/documentation-writer.prompt.md)

- **用途**: Diátaxis 文件專家,建立高品質的軟體文件
- **功能**:
  - 遵循 Diátaxis 框架 (教學 Tutorials、操作指南 How-to Guides、參考 Reference、說明 Explanation)
  - 提供結構化工作流程
  - 確保清晰度、準確性、使用者為中心、一致性
  - 多種文件類型支援
- **使用時機**: 需要建立結構化、高品質的技術文件時

#### 開發輔助工具

##### conventional-commit.prompt.md

[查看完整檔案](.github/prompts/conventional-commit.prompt.md)

- **用途**: 使用結構化 XML 格式生成符合 Conventional Commits 規範的提交訊息
- **功能**:
  - 提供提交訊息結構範本 (type, scope, subject, body, footer)
  - 自動執行 `git commit` 命令
  - 驗證提交訊息格式
  - 支援多種提交類型 (feat, fix, docs, style, refactor, test, chore)
- **使用時機**: 需要建立標準化的 Git 提交訊息時

##### create-implementation-plan.prompt.md

[查看完整檔案](.github/prompts/create-implementation-plan.prompt.md)

- **用途**: 為新功能、重構、套件升級或架構變更建立新的實作計畫檔案
- **功能**:
  - 機器可讀、確定性的結構化計畫
  - 離散的原子階段和可執行任務
  - 包含需求、約束、依賴項、測試策略、風險評估
  - 驗證標準和成功指標
- **使用時機**: 開始新功能開發或重大重構任務時

##### update-implementation-plan.prompt.md

[查看完整檔案](.github/prompts/update-implementation-plan.prompt.md)

- **用途**: 基於新需求或更新需求更新現有的實作計畫檔案
- **功能**:
  - 更新現有計畫結構
  - 維護任務追蹤和狀態
  - 更新日期和完成度
  - 保持計畫一致性
- **使用時機**: 實作計畫需要根據新需求進行更新時

##### update-specification.prompt.md

[查看完整檔案](.github/prompts/update-specification.prompt.md)

- **用途**: 基於新需求或現有程式碼更新,更新現有的規格檔案,針對生成式 AI 消費優化
- **功能**:
  - 更新需求、約束和介面
  - 維護 AI 就緒規格格式
  - 包含驗證標準和測試策略
  - 確保規格可追溯性
- **使用時機**: 規格需要反映最新的需求變更或實作更新時

##### prompt-builder.prompt.md

[查看完整檔案](.github/prompts/prompt-builder.prompt.md)

- **用途**: 引導使用者建立高品質的 GitHub Copilot 提示,具備適當的結構、工具和最佳實務
- **功能**:
  - 系統性收集需求
  - 生成完整、生產就緒的提示檔案
  - 整合最佳實務和 YAML front matter
  - 提供範本和範例
- **使用時機**: 需要建立新的 .prompt.md 檔案時

#### 程式碼品質與維護

##### review-and-refactor.prompt.md

[查看完整檔案](.github/prompts/review-and-refactor.prompt.md)

- **用途**: 根據定義的指令審查和重構專案中的程式碼
- **功能**:
  - 審查所有編碼指南指令
  - 進行必要的程式碼重構
  - 確保測試仍然通過
  - 提供重構報告和建議
- **使用時機**: 需要對整個專案進行程式碼品質審查和重構時

##### update-markdown-file-index.prompt.md

[查看完整檔案](.github/prompts/update-markdown-file-index.prompt.md)

- **用途**: 使用指定資料夾中的檔案索引/表格更新 Markdown 檔案區段
- **功能**:
  - 掃描和發現檔案
  - 生成適當的表格/清單格式
  - 提取檔案描述 (從 YAML front matter)
  - 自動更新索引章節
- **使用時機**: 需要在文件中維護檔案清單或索引時

##### update-oo-component-documentation.prompt.md

[查看完整檔案](.github/prompts/update-oo-component-documentation.prompt.md)

- **用途**: 遵循業界最佳實務和架構文件標準更新現有的物件導向元件文件
- **功能**:
  - 分析當前元件實作
  - 更新 C4 模型文件
  - 更新 UML 圖表和架構資訊
  - 同步程式碼和文件
- **使用時機**: 元件程式碼變更後需要同步更新文件時

#### 專案發現與建議

##### suggest-awesome-github-copilot-instructions.prompt.md

[查看完整檔案](.github/prompts/suggest-awesome-github-copilot-instructions.prompt.md)

- **用途**: 基於當前儲存庫上下文和聊天歷史,從 awesome-copilot 儲存庫建議相關的 Copilot 指令檔案
- **功能**:
  - 獲取可用指令清單
  - 掃描本地指令
  - 比較現有指令以避免重複
  - 提供結構化的建議表格 (類別、檔案名稱、描述、相關性評分)
- **使用時機**: 需要發現和安裝適合專案的 Copilot 指令時

##### suggest-awesome-github-copilot-prompts.prompt.md

[查看完整檔案](.github/prompts/suggest-awesome-github-copilot-prompts.prompt.md)

- **用途**: 基於當前儲存庫上下文和聊天歷史,從 awesome-copilot 儲存庫建議相關的提示檔案
- **功能**:
  - 獲取可用提示清單
  - 掃描本地提示
  - 比較現有提示以避免重複
  - 提供結構化的建議表格
- **使用時機**: 需要發現和安裝適合專案的 Copilot 提示時

## 使用範例

### 情境 1: 開始新專案

**步驟 1**: 建立專案 README

繁體中文專案 (推薦):
```markdown
Follow instructions in [create-readme-comprehensive.prompt.md](file:///.github/prompts/create-readme-comprehensive.prompt.md)
```

英文國際專案 (快速):
```markdown
Follow instructions in [create-readme-quick.prompt.md](file:///.github/prompts/create-readme-quick.prompt.md)
```

**步驟 2**: 產生 Copilot 指令檔案

```markdown
Follow instructions in [copilot-instructions-blueprint-generator.prompt.md](file:///.github/prompts/copilot-instructions-blueprint-generator.prompt.md)
```

**步驟 3**: 建立技術堆疊文件

```markdown
Follow instructions in [technology-stack-blueprint-generator.prompt.md](file:///.github/prompts/technology-stack-blueprint-generator.prompt.md)
```

### 情境 2: 開發新功能

**步驟 1**: 建立實作計劃

```markdown
Follow instructions in [create-implementation-plan.prompt.md](file:///.github/prompts/create-implementation-plan.prompt.md)
```

**步驟 2**: 在 Memory Bank 中追蹤進度

使用 `add task` 命令建立新任務,或 `update task [ID]` 更新現有任務狀態。

**步驟 3**: 遵循 Spec-driven Workflow

按照六階段循環進行開發:
1. 分析 (ANALYZE)
2. 設計 (DESIGN)
3. 實作 (IMPLEMENT)
4. 驗證 (VALIDATE)
5. 反思 (REFLECT)
6. 交接 (HANDOFF)

### 情境 3: 提升程式碼品質

**步驟 1**: 進行程式碼審查和重構

```markdown
Follow instructions in [review-and-refactor.prompt.md](file:///.github/prompts/review-and-refactor.prompt.md)
```

**步驟 2**: 檢查安全性問題

確保 `security-and-owasp.instructions.md` 指令已啟用,Copilot 會自動檢查常見的安全漏洞。

**步驟 3**: 優化效能

參考 `performance-optimization.instructions.md` 中的最佳實踐進行效能調整。

### 情境 4: 容器化部署

**步驟 1**: 建立 Dockerfile

在編輯 Dockerfile 時,`containerization-docker-best-practices.instructions.md` 會自動提供建議。

**步驟 2**: 設定 CI/CD

參考 `devops-core-principles.instructions.md` 建立自動化部署流程。

**步驟 3**: 記錄架構決策

```markdown
Follow instructions in [create-architectural-decision-record.prompt.md](file:///.github/prompts/create-architectural-decision-record.prompt.md)
```

### 情境 5: 標準化 Git 工作流程

**提交程式碼時**:

```markdown
Follow instructions in [conventional-commit.prompt.md](file:///.github/prompts/conventional-commit.prompt.md)
```

這會產生符合 Conventional Commits 規範的提交訊息並自動執行提交。

## 最佳實踐

### 指令檔案自訂

1. **根據專案需求調整**：修改指令檔案中的技術堆疊和架構模式
2. **保持版本同步**：確保指令與專案使用的框架版本一致
3. **團隊協作**：讓團隊成員共同維護和改進指令

### 提示有效使用

1. **選擇適當的提示**：根據任務類型選擇最合適的提示範本
2. **提供足夠的上下文**：在使用提示時提供必要的專案資訊
3. **迭代改進**：基於使用經驗持續改進提示內容

## 進階功能

### 記憶體銀行系統

記憶體銀行系統幫助維持專案的上下文和進度：

- **專案簡介**：`projectbrief.md`
- **產品上下文**：`productContext.md`
- **系統模式**：`systemPatterns.md`
- **技術上下文**：`techContext.md`
- **活躍上下文**：`activeContext.md`
- **進度追蹤**：`progress.md`

### 規格驅動工作流程

六階段開發循環：

1. **分析**（ANALYZE）：理解問題和需求
2. **設計**（DESIGN）：建立技術設計和計劃
3. **實作**（IMPLEMENT）：程式碼開發
4. **驗證**（VALIDATE）：測試和品質檢查
5. **反思**（REFLECT）：改進和檔案更新
6. **交接**（HANDOFF）：準備部署和轉移

## 貢獻

歡迎貢獻！請查看我們的貢獻指南：

1. Fork 專案
2. 建立功能分支
3. 提交您的更改
4. 推送到分支
5. 開啟 Pull Request

## 支援

如果您遇到問題或有建議，請：

1. 檢查[現有 Issues](https://github.com/rockexe0000/my-awesome-copilot/issues)
2. [建立新的 Issue](https://github.com/rockexe0000/my-awesome-copilot/issues/new)
3. 提供詳細的問題描述和重現步驟

## 授權

本專案採用 MIT 授權。詳見 [LICENSE](LICENSE) 檔案。

---

⭐ 如果這個專案對您有幫助，請給我們一個星星！