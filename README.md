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

## 核心組件

### 🔧 指令系統

專案包含以下核心指令檔案：

| 檔案 | 描述 |
|------|------|
| `devops-core-principles.instructions.md` | DevOps 核心原則和 CALMS 框架 |
| `security-and-owasp.instructions.md` | 安全編碼和 OWASP 最佳實踐 |
| `performance-optimization.instructions.md` | 全面的效能最佳化指導 |
| `memory-bank.instructions.md` | 專案記憶體管理和上下文維護 |
| `spec-driven-workflow-v1.instructions.md` | 規格驅動的開發工作流程 |
| `taming-copilot.instructions.md` | 控制 Copilot 行為的核心指令 |

### 📝 提示範本

提供豐富的提示範本用於：

- **專案檔案建立**：README、架構檔案記錄、實作計劃
- **程式碼品質**：審查、重構、測試產生
- **檔案管理**：技術堆疊藍圖、架構決策記錄
- **開發輔助**：Conventional Commits、實作計劃更新

## 使用範例

### 建立專案 README

使用內建的提示範本：

```markdown
Follow instructions in [create-readme.prompt.md](file:///.github/prompts/create-readme.prompt.md)
```

### 產生架構檔案

```markdown
Follow instructions in [copilot-instructions-blueprint-generator.prompt.md](file:///.github/prompts/copilot-instructions-blueprint-generator.prompt.md)
```

### 建立實作計劃

```markdown
Follow instructions in [create-implementation-plan.prompt.md](file:///.github/prompts/create-implementation-plan.prompt.md)
```

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