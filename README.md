# My Awesome Copilot

一個精心設計的 GitHub Copilot 指令和提示集合，旨在提升開發者體驗並促進最佳實踐的採用。

> A curated collection of GitHub Copilot instructions and prompts designed to enhance developer experience and promote best practices.

[![License](https://img.shields.io/badge/License-MIT-yellow?style=flat-square)](LICENSE)
[![GitHub Issues](https://img.shields.io/github/issues/rockexe0000/my-awesome-copilot?style=flat-square)](https://github.com/rockexe0000/my-awesome-copilot/issues)
[![GitHub Stars](https://img.shields.io/github/stars/rockexe0000/my-awesome-copilot?style=flat-square)](https://github.com/rockexe0000/my-awesome-copilot/stargazers)
[![PRs Welcome](https://img.shields.io/badge/PRs-welcome-brightgreen?style=flat-square)](CONTRIBUTING.md)

## 目錄 / Table of Contents

### 📋 核心文件
- [專案概述 / Project Overview](#專案概述--project-overview)
- [核心特色 / Key Features](#核心特色--key-features)
- [系統架構 / System Architecture](#系統架構--system-architecture)

### 🚀 快速開始
- [快速開始 / Quick Start](#快速開始--quick-start)
- [專案結構 / Project Structure](#專案結構--project-structure)
- [AI 代理清單 / AI Agents](#ai-代理清單--ai-agents)

### 📚 詳細指南
- [指令系統 / Instructions System](docs/README.instructions.md)
- [提示範本 / Prompt Templates](#提示範本--prompt-templates)
- [使用範例 / Usage Examples](#使用範例--usage-examples)

### 🔧 最佳實踐與規範
- [最佳實踐 / Best Practices](#最佳實踐--best-practices)
- [文件管理建議 / Documentation Management](#文件管理建議--documentation-management)

### 🤝 社群與支援
- [貢獻 / Contributing](#貢獻--contributing)
- [支援 / Support](#支援--support)
- [授權 / License](#授權--license)

### 🔍 快速查找

| 我想要... | 前往章節 |
|----------|----------|
| 了解專案背景與目標 | [專案概述](#專案概述--project-overview) |
| 查看系統架構圖 | [系統架構](#系統架構--system-architecture) |
| 快速啟動專案 | [快速開始](#快速開始--quick-start) |
| 查看所有 AI 代理 | [AI 代理清單](#ai-代理清單--ai-agents) |
| 了解指令系統 | [指令系統](docs/README.instructions.md) |
| 瀏覽提示範本 | [提示範本](#提示範本--prompt-templates) |
| 學習使用範例 | [使用範例](#使用範例--usage-examples) |
| 檔案命名規範 | [最佳實踐](#最佳實踐--best-practices) |
| 回報問題或貢獻 | [貢獻](#貢獻--contributing) |

## 專案概述 / Project Overview

My Awesome Copilot 是一個全面的 GitHub Copilot 指令和提示系統，專為提升軟體開發效率與程式碼品質而設計。本專案整合了業界最佳實踐、安全規範和效能優化策略，透過結構化的指令系統和可重用的提示範本,幫助開發團隊建立一致的開發標準。

> My Awesome Copilot is a comprehensive GitHub Copilot instructions and prompts system designed to enhance software development efficiency and code quality. This project integrates industry best practices, security standards, and performance optimization strategies through structured instruction systems and reusable prompt templates, helping development teams establish consistent development standards.

### 核心目標 / Core Goals

- **標準化開發實踐** - 通過一致的指令確保程式碼品質和架構決策
- **提升開發效率** - 提供現成的提示範本來處理常見的開發任務
- **促進最佳實踐** - 整合 DevOps、安全性、效能最佳化等業界標準
- **增強程式碼品質** - 透過自動化檢查和建議來維持高程式碼標準

## 核心特色 / Key Features

### 🎯 全面的指令系統

涵蓋軟體開發全生命週期的指令集:
- **DevOps 核心原則** - CALMS 框架與 DORA 四大指標
- **安全編碼規範** - 基於 OWASP Top 10 的安全指導
- **效能最佳化** - 前端、後端、資料庫全方位優化策略
- **開發流程管理** - Spec-driven Workflow 六階段開發循環
- **容器化最佳實踐** - Docker 映像優化與安全掃描

### 📝 豐富的提示範本

預建的提示檔案用於常見開發工作流程:
- **README 產生器** - 智慧型雙語文件產生 (繁中/英文)
- **實作計劃管理** - 結構化的開發計畫建立與追蹤
- **架構決策記錄** - ADR 文件自動化產生
- **程式碼審查工具** - 自動化程式碼品質檢查與重構建議
- **標準化 Git 提交** - Conventional Commits 規範整合

> 📖 **完整提示範本文件**: [查看所有 Prompts 詳細說明](docs/README.prompts.md)

### 🤖 智慧 AI 代理

內建 7 個專業 AI 代理,涵蓋架構、測試、文件等領域:
- **架構設計專家** - 產生完整的架構圖表與 NFR 分析
- **文件查詢專家** - 即時查詢最新函式庫文件
- **測試自動化** - Playwright 測試腳本產生與執行
- **PRD 產生器** - 產品需求文件自動化建立
- **Terraform 專家** - IaC 最佳實踐與自動化部署

### 🔄 記憶體銀行系統

維持專案上下文和進度追蹤:
- 專案知識持久化儲存
- 任務狀態自動追蹤
- 決策歷史記錄
- 多會話上下文保持

## 系統架構 / System Architecture

### 專案組織結構圖

```mermaid
graph TB
    subgraph "My Awesome Copilot 專案架構"
        Root[📦 專案根目錄<br/>my-awesome-copilot]
        
        subgraph GitHub[".github/ 配置目錄"]
            Instructions[📋 Instructions<br/>指令系統<br/>10 個檔案]
            Prompts[📝 Prompts<br/>提示範本<br/>19 個檔案]
            Agents[🤖 Agents<br/>AI 代理<br/>7 個檔案]
        end
        
        subgraph Core["核心文件"]
            README[📖 README.md<br/>專案說明]
            CONTRIB[🤝 CONTRIBUTING.md<br/>貢獻指南]
            LICENSE[⚖️ LICENSE<br/>MIT 授權]
        end
        
        Root --> GitHub
        Root --> Core
        
        Instructions --> DevOps[DevOps 原則]
        Instructions --> Security[安全編碼 OWASP]
        Instructions --> Performance[效能優化]
        Instructions --> Workflow[Spec-driven Workflow]
        Instructions --> Memory[Memory Bank]
        Instructions --> Docker[Docker 最佳實踐]
        Instructions --> Others[其他指令...]
        
        Prompts --> ReadmeGen[README 產生器]
        Prompts --> PlanGen[實作計劃產生器]
        Prompts --> ADRGen[ADR 產生器]
        Prompts --> Commit[Git 提交規範]
        Prompts --> Others2[其他提示...]
        
        Agents --> Arch[架構設計專家]
        Agents --> Context7[文件查詢專家]
        Agents --> Playwright[測試自動化]
        Agents --> PRD[PRD 產生器]
        Agents --> Terraform[Terraform 專家]
        Agents --> Others3[其他代理...]
    end
    
    style Root fill:#e1f5ff
    style Instructions fill:#fff3e0
    style Prompts fill:#e8f5e9
    style Agents fill:#f3e5f5
    style Core fill:#fce4ec
```

### 工作流程圖

```mermaid
flowchart LR
    User[👤 使用者]
    
    subgraph GitHubCopilot["GitHub Copilot 整合"]
        Instructions2[📋 自動載入<br/>Instructions]
        Prompts2[📝 手動呼叫<br/>Prompts]
        Agents2[🤖 @ 標記<br/>Agents]
    end
    
    subgraph Output["輸出成果"]
        Code[💻 程式碼]
        Docs[📄 文件]
        Plan[📊 計劃]
        ADR[📝 決策記錄]
    end
    
    User -->|編寫程式碼| Instructions2
    User -->|產生文件| Prompts2
    User -->|專業諮詢| Agents2
    
    Instructions2 -->|自動套用規範| Code
    Prompts2 -->|產生| Docs
    Prompts2 -->|產生| Plan
    Prompts2 -->|產生| ADR
    Agents2 -->|提供建議| Code
    Agents2 -->|產生| Docs
    
    style User fill:#bbdefb
    style Instructions2 fill:#fff3e0
    style Prompts2 fill:#e8f5e9
    style Agents2 fill:#f3e5f5
```

### 三大核心系統

| 系統 | 類型 | 觸發方式 | 數量 | 主要用途 |
|------|------|---------|------|---------|
| **Instructions** | 自動 | 根據檔案類型自動載入 | 10 個 | 程式碼生成規範、最佳實踐自動套用 |
| **Prompts** | 手動 | 使用 `Follow instructions in [file.prompt.md]` | 19 個 | 文件產生、計劃建立、程式碼審查 |
| **Agents** | 互動 | 使用 `@agent-name` 標記 | 7 個 | 專業領域諮詢、架構設計、測試自動化 |

## 技術堆疊 / Technology Stack

本專案是一個純文件與配置專案,不涉及執行時程式碼。主要使用以下技術:

### 文件格式 / Documentation Formats

| 技術 | 用途 / Purpose |
|------|---------------|
| **Markdown** | 所有文件和配置的主要格式 |
| **YAML Front Matter** | 用於指令和提示的元資料定義 (applyTo, description) |
| **Mermaid** | 架構圖和流程圖繪製 (系統架構、工作流程視覺化) |
| **JSON** | 配置檔案和結構化資料 |

### 開發工具 / Development Tools

| 工具 | 版本需求 | 用途 / Purpose |
|------|---------|---------------|
| **GitHub Copilot** | 最新版 | 核心整合平台 - 自動載入指令、提示和代理 |
| **VS Code** | >= 1.80 | 推薦的編輯器 (完整支援 GitHub Copilot 功能) |
| **Git** | >= 2.0 | 版本控制系統 |

### 檔案命名規範 / File Naming Conventions

| 類型 | 命名格式 | 觸發方式 | 範例 |
|------|---------|---------|------|
| **Instructions** | `*.instructions.md` | 自動載入 (根據 applyTo 規則) | `security-and-owasp.instructions.md` |
| **Prompts** | `*.prompt.md` | 手動觸發 (`Follow instructions in [file]`) | `create-readme-comprehensive.prompt.md` |
| **Agents** | `*.agent.md` | 互動式使用 (`@agent-name`) | `arch.agent.md` |

### 專案特性 / Project Characteristics

- **無執行時相依性** - 純文件專案,無需編譯或建構
- **即插即用** - 複製到專案即可使用
- **跨語言支援** - 指令適用於 TypeScript, Python, Java, Go, C# 等
- **可擴充性** - 易於新增自訂指令、提示和代理

## 環境需求 / Prerequisites

### 必要條件 / Required

> [!IMPORTANT]
> 使用本專案前,請確保您已滿足以下條件:

- **GitHub Copilot 訂閱** - 個人版、商業版或企業版
  - [申請試用](https://github.com/features/copilot) 或 [購買訂閱](https://docs.github.com/en/billing/managing-billing-for-github-copilot)
- **支援的編輯器** - VS Code (推薦) 或其他支援 GitHub Copilot 的 IDE
  - [VS Code 下載](https://code.visualstudio.com/)
  - [GitHub Copilot 擴充功能](https://marketplace.visualstudio.com/items?itemName=GitHub.copilot)

### 建議配置 / Recommended

- **Git** >= 2.0 - 用於專案複製和版本控制
- **基礎 Markdown 知識** - 用於閱讀和自訂指令、提示
- **YAML 基礎** - 用於理解 front matter 元資料配置

### 驗證環境 / Environment Verification

安裝完成後,請執行以下檢查:

```bash
# 檢查 Git 版本
git --version
# 預期輸出: git version 2.x.x 或更高

# 檢查 VS Code 版本
code --version
# 預期輸出: 1.80.x 或更高
```

在 VS Code 中驗證 GitHub Copilot:

- [ ] GitHub Copilot 圖標出現在狀態列 (右下角)
- [ ] 點擊圖標顯示 "GitHub Copilot is active"
- [ ] 開啟 Copilot Chat (快捷鍵: `Ctrl+Alt+I` / `Cmd+Option+I`)
- [ ] 在 Chat 中輸入 `@` 可以看到可用的代理列表

## 快速開始 / Quick Start

## AI 代理清單 / AI Agents

本專案內建 **7 個專業 AI 代理**,涵蓋架構設計、文件查詢、測試自動化、需求文件、工程指導和基礎設施管理等領域。

> 📖 **完整 Agent 清單與詳細說明**: [查看 Agents 文件](docs/README.agents.md)

### 快速預覽

| Agent 名稱 | 主要職責 | 檔案 |
|------------|---------|------|
| **Senior Cloud Architect** | 架構設計與 NFR 分析 | [arch.agent.md](.github/agents/arch.agent.md) |
| **Context7 Documentation Expert** | 最新函式庫文件查詢 | [context7.agent.md](.github/agents/context7.agent.md) |
| **Critical Thinking Mode** | 批判性思考與決策挑戰 | [critical-thinking.agent.md](.github/agents/critical-thinking.agent.md) |
| **Playwright Tester Mode** | 自動化測試產生與執行 | [playwright-tester.agent.md](.github/agents/playwright-tester.agent.md) |
| **Create PRD Chat Mode** | 產品需求文件產生 | [prd.agent.md](.github/agents/prd.agent.md) |
| **Principal Software Engineer** | 工程卓越與程式碼品質 | [principal-software-engineer.agent.md](.github/agents/principal-software-engineer.agent.md) |
| **Terraform Agent** | IaC 與基礎設施自動化 | [terraform.agent.md](.github/agents/terraform.agent.md) |

### 如何使用

在 GitHub Copilot Chat 中使用 `@` 標記啟用代理:

```bash
# 架構設計
@arch 設計一個微服務架構

# 查詢最新文件
@context7 React 19 的新功能

# 建立測試
@playwright 產生登入流程測試

# 撰寫 PRD
@prd 使用者認證系統需求文件
```

> 💡 **想了解每個 Agent 的詳細功能、核心特色、使用場景和最佳實踐?** 請查看 [完整 Agents 文件](docs/README.agents.md)

## 指令系統 / Instructions System

本專案包含 **10 個精心設計的 GitHub Copilot 指令檔案**,涵蓋開發流程、程式碼品質、安全性、效能優化和 DevOps 等領域。這些指令會根據檔案類型自動套用,無需手動觸發。

> 📖 **完整指令清單與詳細說明**: [查看 Instructions 文件](docs/README.instructions.md)

### 快速預覽

**🔄 開發流程與專案管理 (3 個)**
- [Spec-driven Workflow](.github/instructions/spec-driven-workflow-v1.instructions.md) - 六階段開發循環 (ANALYZE → DESIGN → IMPLEMENT → VALIDATE → REFLECT → HANDOFF)
- [Memory Bank](.github/instructions/memory-bank.instructions.md) - 專案上下文與任務管理系統
- [Copilot Thought Logging](.github/instructions/copilot-thought-logging.instructions.md) - 處理過程追蹤

**📝 程式碼品質與規範 (3 個)**
- [Self-explanatory Commenting](.github/instructions/self-explanatory-code-commenting.instructions.md) - 自我解釋的程式碼註解指南
- [Taming Copilot](.github/instructions/taming-copilot.instructions.md) - 精確控制 Copilot 行為
- [Markdown](.github/instructions/markdown.instructions.md) - Markdown 文件撰寫規範

**🔒 安全性 (1 個)**
- [OWASP Security](.github/instructions/security-and-owasp.instructions.md) - OWASP Top 10 安全編碼實踐

**⚡ 效能優化 (1 個)**
- [Performance Optimization](.github/instructions/performance-optimization.instructions.md) - 前端/後端/資料庫全方位優化

**🚀 DevOps 與容器化 (2 個)**
- [DevOps Principles](.github/instructions/devops-core-principles.instructions.md) - CALMS 框架與 DORA 四大指標
- [Docker Best Practices](.github/instructions/containerization-docker-best-practices.instructions.md) - 容器化最佳實踐

### 如何使用

GitHub Copilot 會自動讀取 `.github/instructions/` 目錄下的指令檔案。每個指令使用 `applyTo` 欄位定義適用範圍:

```yaml
---
applyTo: '**/*.ts'  # 套用到所有 TypeScript 檔案
description: 'TypeScript coding standards'
---
```

**整合到您的專案:**

```bash
# 方法 1: 直接複製
cp -r .github/instructions /path/to/your/project/.github/

# 方法 2: Git Submodule (推薦)
git submodule add https://github.com/rockexe0000/my-awesome-copilot.git .github/copilot-config
ln -s .github/copilot-config/.github/instructions .github/instructions
```

> 💡 **想了解每個指令的詳細功能、使用場景和最佳實踐?** 請查看 [完整 Instructions 文件](docs/README.instructions.md)

## 快速參考索引

### 📋 依功能分類

**指令系統 (Instructions)** - [查看完整清單](docs/README.instructions.md#依功能分類)

- 🔄 開發流程與專案管理 (3 個)
- 📝 程式碼品質與規範 (3 個)
- 🔒 安全性 (1 個)
- ⚡ 效能優化 (1 個)
- 🚀 DevOps 與容器化 (2 個)

#### 文件與藍圖產生
- [Create README (Comprehensive)](#create-readme-comprehensivepromptmd-推薦) - 智慧型雙語 README 產生器
- [Create README (Quick)](#create-readme-quickpromptmd) - 快速英文 README 產生器
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
| 追蹤專案進度 | [memory-bank.instructions.md](docs/README.instructions.md#memory-bankinstructionsmd) |
| 提升程式碼安全性 | [security-and-owasp.instructions.md](docs/README.instructions.md#security-and-owaspinstructionsmd) |
| 優化應用效能 | [performance-optimization.instructions.md](docs/README.instructions.md#performance-optimizationinstructionsmd) |
| 標準化 Git 提交 | [conventional-commit.prompt.md](#conventional-commitpromptmd) |
| 建立實作計劃 | [create-implementation-plan.prompt.md](#create-implementation-planpromptmd) |
| 審查和重構程式碼 | [review-and-refactor.prompt.md](#review-and-refactorpromptmd) |
| 設定 Docker 容器 | [containerization-docker-best-practices.instructions.md](docs/README.instructions.md#containerization-docker-best-practicesinstructionsmd) |
| 遵循 DevOps 實踐 | [devops-core-principles.instructions.md](docs/README.instructions.md#devops-core-principlesinstructionsmd) |

## 快速開始 / Quick Start

### 安裝 / Installation

```bash
# 複製專案儲存庫 (Clone repository)
git clone https://github.com/rockexe0000/my-awesome-copilot.git
cd my-awesome-copilot
```

### 整合到現有專案 / Integration

#### 方法 1: 複製指令檔案 (Copy Instructions)

```bash
# 複製指令檔案到您的專案 (Copy instructions to your project)
cp -r .github/instructions /path/to/your/project/.github/

# 複製提示範本 (Copy prompt templates)
cp -r .github/prompts /path/to/your/project/.github/

# 複製 AI 代理 (Optional: Copy AI agents)
cp -r .github/agents /path/to/your/project/.github/
```

#### 方法 2: Git Submodule (Recommended)

```bash
# 在您的專案中加入為 submodule (Add as submodule)
cd /path/to/your/project
git submodule add https://github.com/rockexe0000/my-awesome-copilot.git .github/copilot-config

# 建立符號連結 (Create symbolic links)
ln -s .github/copilot-config/.github/instructions .github/instructions
ln -s .github/copilot-config/.github/prompts .github/prompts
```

### 基本使用 / Basic Usage

#### 使用指令 / Using Instructions

GitHub Copilot 會自動讀取 `.github/instructions/` 目錄下的指令檔案。指令會根據 `applyTo` 欄位自動套用到對應的檔案類型。

> [!TIP]
> 指令檔案使用 YAML front matter 定義適用範圍。例如:
> ```yaml
> ---
> applyTo: '**/*.ts'
> description: 'TypeScript coding standards'
> ---
> ```

#### 使用提示範本 / Using Prompt Templates

在 GitHub Copilot Chat 中使用以下格式:

```markdown
# 產生繁中雙語 README (推薦)
# Generate bilingual README (Recommended)
Follow instructions in [create-readme-comprehensive.prompt.md](file:///.github/prompts/create-readme-comprehensive.prompt.md)

# 產生英文 README (快速)
# Generate English README (Quick)
Follow instructions in [create-readme-quick.prompt.md](file:///.github/prompts/create-readme-quick.prompt.md)

# 標準化 Git 提交訊息
# Standardize Git commit message
Follow instructions in [conventional-commit.prompt.md](file:///.github/prompts/conventional-commit.prompt.md)
```

> 📚 **更多提示範本**: 查看 [完整 Prompts 清單與使用指南](docs/README.prompts.md)

#### 使用 AI 代理 / Using AI Agents

在 GitHub Copilot Chat 中使用 `@` 標記啟用代理:

```bash
# 架構設計諮詢 (Architecture design consultation)
@arch 請幫我設計一個微服務架構

# 查詢最新函式庫文件 (Query latest library documentation)
@context7 React 18 的新功能有哪些?

# 建立 PRD 文件 (Create PRD document)
@prd 我需要一個使用者認證系統的需求文件
```

## 專案結構 / Project Structure

```
my-awesome-copilot/
├── .github/
│   ├── agents/                    # AI 代理配置 (AI Agents Configuration)
│   │   ├── arch.agent.md         # 架構設計專家 (Architecture Expert)
│   │   ├── context7.agent.md     # 文件查詢專家 (Documentation Expert)
│   │   ├── critical-thinking.agent.md  # 批判思考模式 (Critical Thinking)
│   │   ├── playwright-tester.agent.md  # 測試自動化 (Test Automation)
│   │   ├── prd.agent.md          # PRD 產生器 (PRD Generator)
│   │   ├── principal-software-engineer.agent.md  # 首席工程師 (Principal Engineer)
│   │   └── terraform.agent.md    # Terraform 專家 (Terraform Expert)
│   │
│   ├── instructions/              # GitHub Copilot 指令 (Instructions)
│   │   ├── devops-core-principles.instructions.md
│   │   ├── security-and-owasp.instructions.md
│   │   ├── performance-optimization.instructions.md
│   │   ├── spec-driven-workflow-v1.instructions.md
│   │   ├── memory-bank.instructions.md
│   │   ├── containerization-docker-best-practices.instructions.md
│   │   ├── self-explanatory-code-commenting.instructions.md
│   │   ├── taming-copilot.instructions.md
│   │   ├── copilot-thought-logging.instructions.md
│   │   └── markdown.instructions.md
│   │
│   └── prompts/                   # 提示範本 (Prompt Templates)
│       ├── create-readme-comprehensive.prompt.md  # ⭐ 推薦
│       ├── create-readme-quick.prompt.md
│       ├── copilot-instructions-blueprint-generator.prompt.md
│       ├── technology-stack-blueprint-generator.prompt.md
│       ├── conventional-commit.prompt.md
│       ├── create-implementation-plan.prompt.md
│       ├── create-architectural-decision-record.prompt.md
│       ├── review-and-refactor.prompt.md
│       └── ... (更多範本 / more templates)
│
├── docs/                         # 📚 詳細文件 (Detailed Documentation)
│   ├── README.agents.md         # AI 代理完整清單與使用指南
│   ├── README.collections.md    # 集合與模組化組織指南
│   ├── README.instructions.md   # 指令系統完整參考文件
│   └── README.prompts.md        # 提示範本完整說明與範例
│
├── temp/                         # 🗂️ 暫存檔案 (臨時工作區,不納入版本控制)
│   └── archive/                 # 已封存的舊版文件與實驗性內容
│
├── CONTRIBUTING.md               # 貢獻指南 (Contributing Guide)
├── LICENSE                       # MIT 授權 (MIT License)
└── README.md                     # 本檔案 (This file)
```

### 目錄說明 / Directory Description

| 目錄 / Directory | 用途 / Purpose |
|-----------------|---------------|
| `.github/agents/` | AI 代理配置檔案,提供專業領域的輔助功能 |
| `.github/instructions/` | GitHub Copilot 指令,定義程式碼產生規則和最佳實踐 |
| `.github/prompts/` | 可重用的提示範本,用於常見開發任務 |
| `docs/` | 專案詳細文件,包含各子系統的完整參考指南 |
| `temp/` | 暫存工作區,用於實驗和草稿 (不納入版本控制) |

## 快速參考索引

### 📋 依功能分類

**指令系統 (Instructions)** - [查看完整清單](docs/README.instructions.md#依功能分類)

- 🔄 開發流程與專案管理 (3 個)
- 📝 程式碼品質與規範 (3 個)
- 🔒 安全性 (1 個)
- ⚡ 效能優化 (1 個)
- 🚀 DevOps 與容器化 (2 個)

#### 文件與藍圖產生
- [Create README (Comprehensive)](#create-readme-comprehensivepromptmd-推薦) - 智慧型雙語 README 產生器
- [Create README (Quick)](#create-readme-quickpromptmd) - 快速英文 README 產生器
- [Copilot Instructions Blueprint Generator](#copilot-instructions-blueprint-generatorpromptmd) - 產生 Copilot 指令檔案
- [README Blueprint Generator](#readme-blueprint-generatorpromptmd) - 基於現有文件產生 README
- [Technology Stack Blueprint Generator](#technology-stack-blueprint-generatorpromptmd) - 技術堆疊文件產生器

### 🔍 快速搜尋表

| 我想要... | 使用這個檔案 |
|----------|-------------|
| 建立繁中雙語 README (推薦) | [create-readme-comprehensive.prompt.md](#create-readme-comprehensivepromptmd-推薦) |
| 建立英文 README (快速) | [create-readme-quick.prompt.md](#create-readme-quickpromptmd) |
| 設定 Copilot 指令 | [copilot-instructions-blueprint-generator.prompt.md](#copilot-instructions-blueprint-generatorpromptmd) |
| 追蹤專案進度 | [memory-bank.instructions.md](docs/README.instructions.md#memory-bankinstructionsmd) |
| 提升程式碼安全性 | [security-and-owasp.instructions.md](docs/README.instructions.md#security-and-owaspinstructionsmd) |
| 優化應用效能 | [performance-optimization.instructions.md](docs/README.instructions.md#performance-optimizationinstructionsmd) |
| 標準化 Git 提交 | [conventional-commit.prompt.md](#conventional-commitpromptmd) |
| 建立實作計劃 | [create-implementation-plan.prompt.md](#create-implementation-planpromptmd) |
| 審查和重構程式碼 | [review-and-refactor.prompt.md](#review-and-refactorpromptmd) |
| 設定 Docker 容器 | [containerization-docker-best-practices.instructions.md](docs/README.instructions.md#containerization-docker-best-practicesinstructionsmd) |
| 遵循 DevOps 實踐 | [devops-core-principles.instructions.md](docs/README.instructions.md#devops-core-principlesinstructionsmd) |

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

### 📝 提示範本 / Prompt Templates

本專案提供 19 個預建提示範本,涵蓋文件產生、開發輔助、程式碼品質等領域。

> 📚 **詳細說明**: 查看 [完整 Prompts 清單與使用指南](docs/README.prompts.md)

#### 快速開始 / Quick Start

**熱門提示範本:**

| 提示範本 | 用途 | 使用方式 |
|---------|------|----------|
| **create-readme-comprehensive** ⭐ | 智慧型雙語 README 產生器 | `Follow instructions in [create-readme-comprehensive.prompt.md](file:///.github/prompts/create-readme-comprehensive.prompt.md)` |
| **create-readme-quick** | 快速英文 README 產生 | `Follow instructions in [create-readme-quick.prompt.md](file:///.github/prompts/create-readme-quick.prompt.md)` |
| **conventional-commit** | 標準化 Git 提交訊息 | `Follow instructions in [conventional-commit.prompt.md](file:///.github/prompts/conventional-commit.prompt.md)` |
| **create-implementation-plan** | 建立實作計畫 | `Follow instructions in [create-implementation-plan.prompt.md](file:///.github/prompts/create-implementation-plan.prompt.md)` |
| **review-and-refactor** | 程式碼審查與重構 | `Follow instructions in [review-and-refactor.prompt.md](file:///.github/prompts/review-and-refactor.prompt.md)` |

#### 提示範本分類 / Categories

- **📄 文件與藍圖產生** (8 個)
  - README 產生器 (雙語/英文)
  - Copilot 指令產生器
  - 技術堆疊文件產生器
  - ADR 產生器
  - Agent 建構器
  - 等更多...

- **🔧 開發輔助工具** (6 個)
  - Conventional Commits
  - 實作計畫管理
  - 規格更新
  - Prompt 建構器
  - 等更多...

- **🧹 程式碼品質與維護** (3 個)
  - 程式碼審查與重構
  - Markdown 索引更新
  - OO 元件文件更新

- **🔍 專案發現與建議** (2 個)
  - Instructions 建議
  - Prompts 建議

> 💡 **完整清單**: 所有 19 個提示範本的詳細說明、功能特色和使用時機,請查看 [docs/README.prompts.md](docs/README.prompts.md)

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

### 檔案命名與目錄結構規範

#### 📝 檔案命名規則

**必須使用 kebab-case (小寫加連字號):**

```markdown
✅ 正確範例:
- getting-started.md
- installation-guide.md
- api-reference.md
- troubleshooting-common-issues.md

❌ 錯誤範例:
- GettingStarted.md (駝峰式)
- install_guide.md (蛇形)
- API-Reference.md (混合大小寫)
```

**命名原因:**
- **URL 友善**: Linux 伺服器區分大小寫,kebab-case 避免連結錯誤
- **SEO 最佳化**: 搜尋引擎將連字號視為字詞分隔符,提升可讀性
- **可讀性**: 比底線 `_` 更清晰易讀
- **業界標準**: GitHub、GitLab 等平台的慣例

#### 🗂️ 標準目錄架構

```
project-root/
├── README.md                 # 專案概述與快速開始 (必須)
├── CONTRIBUTING.md           # 貢獻指南 (建議)
├── CHANGELOG.md              # 變更日誌 (建議)
├── LICENSE                   # 授權檔案 (必須)
├── CODE_OF_CONDUCT.md        # 行為準則 (選用)
│
├── docs/                     # 📚 文件根目錄
│   ├── index.md             # 文件首頁/索引
│   ├── getting-started.md   # 快速開始指南
│   ├── installation.md      # 安裝說明
│   ├── configuration.md     # 配置指南
│   │
│   ├── api/                 # API 文件
│   │   ├── overview.md
│   │   ├── authentication.md
│   │   └── endpoints.md
│   │
│   ├── tutorials/           # 教學指南
│   │   ├── basic-usage.md
│   │   └── advanced-features.md
│   │
│   ├── guides/              # 進階指南
│   │   ├── deployment.md
│   │   └── troubleshooting.md
│   │
│   └── assets/              # 靜態資源
│       └── images/          # 圖片資源
│           ├── architecture-diagram.png
│           └── workflow.svg
│
└── src/                     # 原始程式碼
```

**目錄說明:**

| 目錄 | 用途 | 必要性 |
|------|------|--------|
| `docs/` | 所有專案文件的根目錄 | 必須 |
| `docs/assets/images/` | 儲存所有靜態圖片 | 必須 |
| `docs/api/` | API 參考文件 | 視需求 |
| `docs/tutorials/` | 教學與範例 | 建議 |
| `docs/guides/` | 進階指南 | 建議 |

#### 📏 README 文件大小管理

**原則: README.md 應保持簡潔,複雜專案應拆分文件**

**大小指引:**

🟢 **合理範圍 (推薦)**
- Minimal 深度: 500-1,000 字
- Standard 深度: 1,500-3,000 字
- Comprehensive 深度: 3,000-6,000 字

🟡 **需要優化 (建議拆分)**
- 單一檔案超過 6,000 字
- 包含超過 20 個章節
- 程式碼範例超過 10 個
- 圖表超過 10 個

🔴 **必須拆分 (強制要求)**
- 單一檔案超過 10,000 字
- 包含超過 30 個章節
- 滾動超過 5 個螢幕高度

**拆分策略範例:**

*情境 1: API 文件過於龐大*

```markdown
## README.md (3,000 字) ✅
- 快速開始
- 安裝
- 基本使用
- → [完整 API 文件](docs/api/README.md)

## docs/api/README.md ✅
- API 概覽
- [認證](docs/api/authentication.md)
- [端點參考](docs/api/endpoints.md)
- [錯誤處理](docs/api/error-handling.md)
```

*情境 2: Monorepo 多專案*

```markdown
## README.md (根目錄) ✅
- 專案總覽
- Monorepo 結構
- 快速開始
- 各子專案連結

## packages/frontend/README.md ✅
- React 前端專案文件

## packages/backend/README.md ✅
- Node.js 後端專案文件
```

**文件連結範例:**

```markdown
## 詳細文件 / Detailed Documentation

想了解更多?請參閱以下文件:

- 📖 [完整安裝指南](docs/installation.md) - 詳細安裝步驟與故障排除
- 🔧 [配置參考](docs/configuration.md) - 所有配置選項說明
- 🚀 [部署指南](docs/deployment/README.md) - 多環境部署策略
- 📚 [API 文件](docs/api/README.md) - 完整 API 參考
- 🎓 [教學指南](docs/tutorials/README.md) - 逐步教學範例
- ❓ [故障排除](docs/troubleshooting.md) - 常見問題與解決方案

> [!TIP]
> 新手建議從 [快速開始指南](docs/getting-started.md) 開始!
```

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

## 文件管理建議 / Documentation Management

### 📏 當前文件狀態

> [!NOTE]
> **文件大小評估**
> - 目前 README.md 大小: 約 **5,000+ 字**
> - 建議範圍 (Standard 深度): 1,500-3,000 字
> - 狀態: 🟢 **已優化** (指令系統詳細內容已遷移至 [docs/README.instructions.md](docs/README.instructions.md))

### 為什麼遷移指令系統內容?

本次更新將原本在 README.md 中的 **10 個指令檔案詳細說明** (約 232 行) 遷移至專門的 `docs/README.instructions.md` 文件,帶來以下優點:

✅ **優點**:
- README.md 更簡潔,便於新手快速了解專案
- 指令系統有專門的完整文件,包含安裝指南、詳細功能、使用場景、最佳實踐
- 文件結構更清晰,符合大型專案的最佳實踐
- 更易於維護和更新指令相關內容

⚠️ **注意事項**:
- 需要透過連結跳轉至 [docs/README.instructions.md](docs/README.instructions.md) 查看指令詳細內容
- README.md 仍保留指令系統的概述和快速預覽

### 未來拆分建議

如果未來 README.md 超過 **10,000 字** 或包含超過 **40 個章節**,建議進一步拆分為:

```
docs/
├── README.instructions.md   # 詳細指令系統說明 ✅ (已建立)
├── README.prompts.md        # 詳細提示範本說明 ✅ (已建立)
├── README.agents.md         # 詳細 AI 代理說明
├── getting-started.md       # 新手入門指南
└── advanced-usage.md        # 進階使用技巧
```

## 支援 / Support

如果您遇到問題或有建議，請：

1. 檢查[現有 Issues](https://github.com/rockexe0000/my-awesome-copilot/issues)
2. [建立新的 Issue](https://github.com/rockexe0000/my-awesome-copilot/issues/new)
3. 提供詳細的問題描述和重現步驟

## 授權 / License

本專案採用 MIT 授權。詳見 [LICENSE](LICENSE) 檔案。

## 參考來源

本專案靈感來自並參考了以下優秀的開源專案：

- [github/awesome-copilot](https://github.com/github/awesome-copilot) - GitHub 官方的 Copilot 資源集合

---

⭐ 如果這個專案對您有幫助,請給我們一個星星!