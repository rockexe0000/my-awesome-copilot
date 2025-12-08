# 🤖 AI 代理清單 / Custom Agents

本專案內建 **7 個專業 AI 代理** (agents),每個 agent 皆有明確分工,支援架構設計、測試、產品規格、工程指導與基礎設施自動化。

> Custom agents for GitHub Copilot, making it easy for users and organizations to "specialize" their Copilot coding agent (CCA) through simple file-based configuration.

## 目錄 / Table of Contents

- [完整 Agent 清單](#完整-agent-清單)
- [如何使用 Custom Agents](#如何使用-custom-agents)
  - [安裝方式](#安裝方式)
  - [MCP Server 設定](#mcp-server-設定)
  - [啟用與使用](#啟用與使用)
- [Agent 詳細說明](#agent-詳細說明)
  - [Senior Cloud Architect](#1-senior-cloud-architect)
  - [Context7 Documentation Expert](#2-context7-documentation-expert)
  - [Critical Thinking Mode](#3-critical-thinking-mode)
  - [Playwright Tester Mode](#4-playwright-tester-mode)
  - [Create PRD Chat Mode](#5-create-prd-chat-mode)
  - [Principal Software Engineer](#6-principal-software-engineer)
  - [Terraform Agent](#7-terraform-agent)
- [快速參考表](#快速參考表)
- [最佳實踐](#最佳實踐)
- [故障排除](#故障排除)

## 完整 Agent 清單

| Agent 名稱 | 檔案 | 主要職責 | 核心特色 |
|------------|------|----------|----------|
| **Senior Cloud Architect** | [arch.agent.md](../agents/arch.agent.md) | 現代架構設計模式專家，NFR 需求分析，建立全面的架構圖表和文件 | • 不產生程式碼，專注架構設計<br>• 必須產生 6 種 Mermaid 圖表（系統上下文、元件、部署、資料流、時序、其他相關圖）<br>• 分階段開發方法（Initial Phase → Final Phase）<br>• NFR 詳細分析（可擴展性、效能、安全性、可靠性、可維護性）<br>• 輸出格式：`{app}_Architecture.md` |
| **Context7 Documentation Expert** | [context7.agent.md](../agents/context7.agent.md) | 函式庫/框架最新文件查詢專家，版本升級建議與 API 精確性保證 | • **強制使用 Context7 MCP** 查詢最新官方文件<br>• 禁止憑記憶或訓練資料回答<br>• 自動版本比對（當前 vs 最新）<br>• 多語言生態系統支援（JS/TS, Python, Ruby, Go, Rust, PHP, Java, .NET）<br>• 升級指南自動產生（Breaking Changes、Migration Steps）<br>• 工作流程：`resolve-library-id` → `get-library-docs` → 版本檢查 → 回答 |
| **Critical Thinking Mode** | [critical-thinking.agent.md](../agents/critical-thinking.agent.md) | 挑戰假設，促進批判性思考，確保最佳解決方案和結果 | • 不提供解決方案或直接答案<br>• 持續追問「為什麼」（Why）<br>• 扮演魔鬼代言人角色<br>• 戰略性長期影響思考<br>• 細節導向但簡潔問題<br>• 一次專注一個問題 |
| **Playwright Tester Mode** | [playwright-tester.agent.md](../agents/playwright-tester.agent.md) | Playwright 測試專家，網站探索、測試產生與執行、測試改進 | • **使用 Playwright MCP** 導航網站<br>• 先探索網站再產生測試（不提前編碼）<br>• TypeScript 測試產生<br>• 測試執行、診斷失敗、迭代修正<br>• 結構化可維護測試<br>• 功能摘要文件化 |
| **Create PRD Chat Mode** | [prd.agent.md](../agents/prd.agent.md) | 產品需求文件（PRD）產生專家，用戶故事、驗收標準、技術考量 | • 產生完整 `prd.md` 文件<br>• 先提問釐清需求（3-5 個問題）<br>• 分析程式碼庫以了解現有架構<br>• 唯一需求 ID（GH-001）<br>• 可測試的用戶故事與驗收標準<br>• 支援自動建立 GitHub Issues |
| **Principal Software Engineer** | [principal-software-engineer.agent.md](../agents/principal-software-engineer.agent.md) | 首席工程師級指導，工程卓越、技術領導、務實實作（Martin Fowler 風格） | • 工程基礎原則（Gang of Four, SOLID, DRY, YAGNI, KISS）<br>• 清晰程式碼實踐<br>• 測試金字塔策略（單元、整合、端對端）<br>• **技術債務自動管理**（使用 `create_issue` 追蹤）<br>• 需求分析與風險評估<br>• 平衡工程卓越與交付需求 |
| **Terraform Agent** | [terraform.agent.md](../agents/terraform.agent.md) | Terraform IaC 專家，自動化 HCP Terraform 工作流程，基礎設施最佳實踐 | • **使用 Terraform MCP Server** 自動化<br>• Registry 智慧查詢（Public + Private）<br>• 自動解析最新 Provider/Module 版本<br>• HCP Terraform Workspace 管理<br>• Run 編排（Plan → Apply）<br>• **2-space 縮排，對齊 `=`**<br>• 必須包含檔案：`main.tf`, `variables.tf`, `outputs.tf`, `README.md`<br>• Backend 配置自動產生 |

## 如何使用 Custom Agents

### 安裝方式

#### 方法 1: 使用 VS Code 按鈕安裝
- 點擊您想使用的 agent 的 **VS Code** 或 **VS Code Insiders** 安裝按鈕
- 系統會自動將 agent 配置加入到您的專案中

#### 方法 2: 手動下載安裝
```bash
# 下載單個 agent
curl -o .github/agents/arch.agent.md https://raw.githubusercontent.com/rockexe0000/my-awesome-copilot/main/agents/arch.agent.md

# 或複製整個 agents 目錄到您的專案
cp -r /path/to/my-awesome-copilot/agents /path/to/your/project/.github/
```

### MCP Server 設定

部分 agent 需要配置一個或多個 MCP Server 才能正常運作:

| Agent | 需要的 MCP Server | 用途 |
|-------|------------------|------|
| Context7 Documentation Expert | `@modelcontextprotocol/server-context7` | 查詢最新官方函式庫文件 |
| Playwright Tester Mode | `@automatalabs/mcp-server-playwright` | 網站探索與測試自動化 |
| Terraform Agent | `@terraform/mcp-server-terraform` | HCP Terraform 工作流程自動化 |

**設定步驟:**
1. 點擊 MCP server 名稱在 GitHub MCP registry 中查看
2. 按照 registry 中的指南將 MCP server 加入到您的儲存庫
3. 確保 MCP server 正確配置後再使用對應的 agent

### 啟用與使用

#### 在 VS Code Chat 中使用

```bash
# 使用 @ 標記啟用 agent
@<agent-name> <your-question>
```

**範例:**
```bash
# 架構設計諮詢
@arch 請幫我設計一個微服務架構,需要支援每秒 10,000 次請求

# 查詢最新函式庫文件
@context7 React 19 有哪些新功能?與 React 18 的主要差異是什麼?

# 批判性思考模式
@critical-thinking 我們應該使用微服務架構還是單體架構?

# Playwright 測試
@playwright 請探索 https://example.com 並產生登入流程的測試

# 建立 PRD
@prd 我需要一個使用者認證系統的產品需求文件

# 首席工程師諮詢
@principal-software-engineer 如何重構這個 5000 行的類別?

# Terraform 專家
@terraform 建立一個 AWS EKS 叢集的 Terraform 配置
```

#### 在 GitHub Copilot CCA 中指派

- 可以在 Copilot Coding Agent (CCA) 中指派特定 agent
- 指派後該 agent 會成為您的預設編碼助手

#### 透過 Copilot CLI 使用 (即將推出)

```bash
# 未來功能
gh copilot @arch "Design microservices architecture"
```

## Agent 詳細說明

### 1. Senior Cloud Architect

**檔案位置**: [`agents/arch.agent.md`](../agents/arch.agent.md)

**主要職責:**
- 現代架構設計模式專家
- NFR (Non-Functional Requirements) 需求分析
- 建立全面的架構圖表和文件

**核心特色:**
- ✅ **專注架構設計** - 不產生程式碼,專注於架構決策
- 📊 **6 種 Mermaid 圖表** - 必須產生:
  1. 系統上下文圖 (System Context Diagram)
  2. 元件圖 (Component Diagram)
  3. 部署圖 (Deployment Diagram)
  4. 資料流圖 (Data Flow Diagram)
  5. 時序圖 (Sequence Diagram)
  6. 其他相關圖表
- 🔄 **分階段開發** - Initial Phase (快速原型) → Final Phase (完整系統)
- 📋 **NFR 詳細分析**:
  - Scalability (可擴展性)
  - Performance (效能)
  - Security (安全性)
  - Reliability (可靠性)
  - Maintainability (可維護性)
- 📝 **標準化輸出** - `{app}_Architecture.md` 格式

**使用場景:**
```bash
@arch 設計一個電商平台的微服務架構,需要支援:
- 每秒 5,000 次交易
- 99.99% 可用性
- PCI DSS 合規
- 全球分散式部署
```

**輸出範例:**
```markdown
# ShoppingCart_Architecture.md

## System Context Diagram
[Mermaid 圖表]

## NFR Analysis
### Scalability
- Horizontal scaling with Kubernetes
- Auto-scaling based on CPU/Memory
...
```

---

### 2. Context7 Documentation Expert

**檔案位置**: [`agents/context7.agent.md`](../agents/context7.agent.md)

**主要職責:**
- 函式庫/框架最新文件查詢專家
- 版本升級建議與 API 精確性保證

**核心特色:**
- 🔍 **強制使用 Context7 MCP** - 必須查詢最新官方文件,禁止憑記憶回答
- 🔄 **自動版本比對** - 比較當前版本與最新版本
- 🌐 **多語言生態系統支援**:
  - JavaScript/TypeScript (npm)
  - Python (PyPI)
  - Ruby (RubyGems)
  - Go (Go packages)
  - Rust (crates.io)
  - PHP (Packagist)
  - Java (Maven Central)
  - .NET (NuGet)
- 📖 **升級指南自動產生**:
  - Breaking Changes 列表
  - Migration Steps
  - Code Examples
- 🔁 **標準工作流程**:
  1. `resolve-library-id` - 解析函式庫 ID
  2. `get-library-docs` - 取得官方文件
  3. 版本檢查
  4. 回答問題

**使用場景:**
```bash
@context7 我的專案使用 React 17.0.2,最新版本有什麼新功能?如何升級?

@context7 Axios 的最新版本如何處理請求取消?

@context7 比較 Express.js 和 Fastify 的效能差異
```

**輸出範例:**
```markdown
## React 升級建議 (17.0.2 → 19.0.0)

### 當前版本: 17.0.2
### 最新版本: 19.0.0

### 主要新功能:
1. Server Components
2. Actions
3. Use Hook
...

### Breaking Changes:
- 移除舊版 Context API
- 變更事件處理機制
...

### Migration Steps:
1. 更新套件版本
2. 修改 import 語句
...
```

**必要的 MCP Server:**
- `@modelcontextprotocol/server-context7`

---

### 3. Critical Thinking Mode

**檔案位置**: [`agents/critical-thinking.agent.md`](../agents/critical-thinking.agent.md)

**主要職責:**
- 挑戰假設
- 促進批判性思考
- 確保最佳解決方案和結果

**核心特色:**
- ❌ **不提供解決方案** - 只提出問題,不直接給答案
- ❓ **持續追問 "Why"** - 深入探討決策理由
- 😈 **魔鬼代言人角色** - 挑戰預設立場
- 🎯 **戰略性思考** - 考慮長期影響
- 📍 **細節導向** - 簡潔但深入的問題
- 🔍 **專注單一問題** - 一次只問一個問題

**使用場景:**
```bash
@critical-thinking 我們應該使用微服務架構

@critical-thinking 我計劃使用 MongoDB 作為主要資料庫

@critical-thinking 這個功能需要在下週上線
```

**互動範例:**
```
使用者: 我們應該使用微服務架構

@critical-thinking:
為什麼微服務架構是必要的?
你的團隊規模是多少?
你有足夠的 DevOps 資源來管理多個服務嗎?

使用者: 團隊有 5 個人,DevOps 經驗有限

@critical-thinking:
那麼,為什麼不考慮單體架構 (Monolith) 先快速驗證業務模型?
微服務的複雜度和維護成本對你的團隊來說是否值得?
```

---

### 4. Playwright Tester Mode

**檔案位置**: [`agents/playwright-tester.agent.md`](../agents/playwright-tester.agent.md)

**主要職責:**
- Playwright 測試專家
- 網站探索
- 測試產生與執行
- 測試改進

**核心特色:**
- 🌐 **使用 Playwright MCP** - 自動導航網站
- 🔍 **先探索再編碼** - 不提前假設網站結構
- 📝 **TypeScript 測試產生** - 產生可維護的測試程式碼
- 🔧 **測試執行與診斷** - 執行測試,診斷失敗,迭代修正
- 📚 **結構化測試** - 遵循 Page Object Model 等最佳實踐
- 📄 **功能摘要文件化** - 記錄測試覆蓋範圍

**使用場景:**
```bash
@playwright 探索 https://example.com 並產生登入流程的測試

@playwright 為購物車功能建立端對端測試

@playwright 診斷為什麼這個測試一直失敗
```

**工作流程:**
1. **探索階段** - 使用 Playwright MCP 導航網站
2. **分析階段** - 識別關鍵元素和流程
3. **產生階段** - 建立 TypeScript 測試
4. **執行階段** - 執行測試並收集結果
5. **修正階段** - 診斷失敗並迭代改進

**輸出範例:**
```typescript
// tests/login.spec.ts
import { test, expect } from '@playwright/test';

test.describe('Login Flow', () => {
  test('should login successfully with valid credentials', async ({ page }) => {
    await page.goto('https://example.com/login');
    
    await page.fill('[data-testid="username"]', 'testuser');
    await page.fill('[data-testid="password"]', 'password123');
    await page.click('[data-testid="login-button"]');
    
    await expect(page).toHaveURL('https://example.com/dashboard');
    await expect(page.locator('[data-testid="user-name"]')).toContainText('testuser');
  });
});
```

**必要的 MCP Server:**
- `@automatalabs/mcp-server-playwright`

---

### 5. Create PRD Chat Mode

**檔案位置**: [`agents/prd.agent.md`](../agents/prd.agent.md)

**主要職責:**
- 產品需求文件 (PRD) 產生專家
- 用戶故事
- 驗收標準
- 技術考量

**核心特色:**
- 📝 **產生完整 `prd.md`** - 標準化 PRD 文件格式
- ❓ **先提問釐清需求** - 3-5 個關鍵問題
- 🔍 **分析程式碼庫** - 了解現有架構和技術堆疊
- 🆔 **唯一需求 ID** - 格式: `GH-001`, `GH-002`...
- ✅ **可測試的驗收標準** - Given-When-Then 格式
- 🔗 **GitHub Issues 整合** - 支援自動建立 Issues

**使用場景:**
```bash
@prd 我需要一個使用者認證系統

@prd 建立一個即時聊天功能的 PRD

@prd 將這個 PRD 拆分為可執行的 GitHub Issues
```

**工作流程:**
1. **提問階段** - 詢問關鍵需求細節
2. **分析階段** - 檢視現有程式碼和架構
3. **撰寫階段** - 產生結構化 PRD
4. **審查階段** - 確認需求完整性
5. **建立 Issues** (選用) - 自動建立 GitHub Issues

**PRD 範本:**
```markdown
# PRD: 使用者認證系統

## 概述
Brief description of the feature

## 需求 ID
GH-001

## 用戶故事
As a user,
I want to log in with email and password,
So that I can access my personalized dashboard

## 驗收標準
**Given** a registered user
**When** they enter valid credentials
**Then** they should be redirected to the dashboard

## 技術考量
- Use JWT for authentication
- Password hashing with bcrypt
- Rate limiting to prevent brute force

## 依賴關係
- Requires user database schema
- Needs email verification service

## 風險與限制
- Security: Must comply with OWASP standards
- Performance: Login should complete in < 2 seconds
```

---

### 6. Principal Software Engineer

**檔案位置**: [`agents/principal-software-engineer.agent.md`](../agents/principal-software-engineer.agent.md)

**主要職責:**
- 首席工程師級指導
- 工程卓越
- 技術領導
- 務實實作 (Martin Fowler 風格)

**核心特色:**
- 🏛️ **工程基礎原則**:
  - Gang of Four Design Patterns
  - SOLID 原則
  - DRY (Don't Repeat Yourself)
  - YAGNI (You Aren't Gonna Need It)
  - KISS (Keep It Simple, Stupid)
- ✨ **清晰程式碼實踐** - 可讀性優先
- 🧪 **測試金字塔策略**:
  - Unit Tests (70%)
  - Integration Tests (20%)
  - E2E Tests (10%)
- 📋 **技術債務自動管理** - 使用 `create_issue` 追蹤
- 🎯 **需求分析與風險評估**
- ⚖️ **平衡工程卓越與交付需求**

**使用場景:**
```bash
@principal-software-engineer 如何重構這個 5000 行的類別?

@principal-software-engineer 評估這個架構設計的技術債務

@principal-software-engineer 這個功能應該用什麼設計模式?
```

**哲學:**
> "Any fool can write code that a computer can understand. Good programmers write code that humans can understand." — Martin Fowler

**輸出範例:**
```markdown
## 重構建議: UserService 類別

### 當前問題:
- **單一職責違反**: 同時處理認證、授權、資料存取
- **高耦合度**: 直接依賴多個外部服務
- **測試困難**: 5000 行程式碼難以單元測試

### 重構策略:
1. **應用 Single Responsibility Principle**
   - 拆分為: AuthService, AuthorizationService, UserRepository
   
2. **引入 Dependency Injection**
   ```typescript
   class UserService {
     constructor(
       private authService: AuthService,
       private userRepo: UserRepository
     ) {}
   }
   ```

3. **測試策略**
   - 為每個新類別撰寫單元測試
   - 保留整合測試覆蓋端對端流程

### 技術債務追蹤:
已建立 Issue #123 追蹤此重構任務
```

---

### 7. Terraform Agent

**檔案位置**: [`agents/terraform.agent.md`](../agents/terraform.agent.md)

**主要職責:**
- Terraform IaC (Infrastructure as Code) 專家
- 自動化 HCP Terraform 工作流程
- 基礎設施最佳實踐

**核心特色:**
- 🤖 **使用 Terraform MCP Server** - 自動化工作流程
- 📚 **Registry 智慧查詢** - Public + Private Registry
- 🔄 **自動解析最新版本** - Provider 和 Module 版本管理
- 🏢 **HCP Terraform Workspace 管理**
- 🔧 **Run 編排** - Plan → Apply 自動化
- 📝 **程式碼風格**:
  - **2-space 縮排**
  - **對齊 `=` 符號**
- 📄 **必須包含的檔案**:
  - `main.tf` - 主要資源定義
  - `variables.tf` - 變數定義
  - `outputs.tf` - 輸出定義
  - `README.md` - 使用說明
- ⚙️ **Backend 配置自動產生**

**使用場景:**
```bash
@terraform 建立一個 AWS EKS 叢集的配置

@terraform 查詢最新的 AWS Provider 版本

@terraform 產生 Azure VM 的 Terraform 程式碼

@terraform 幫我執行 terraform plan
```

**程式碼風格範例:**
```hcl
# main.tf
resource "aws_instance" "web" {
  ami           = var.ami_id
  instance_type = var.instance_type
  
  tags = {
    Name        = "web-server"
    Environment = var.environment
  }
}

# variables.tf
variable "ami_id" {
  description = "AMI ID for EC2 instance"
  type        = string
  default     = "ami-12345678"
}

variable "instance_type" {
  description = "EC2 instance type"
  type        = string
  default     = "t3.micro"
}

# outputs.tf
output "instance_id" {
  description = "ID of the EC2 instance"
  value       = aws_instance.web.id
}

output "public_ip" {
  description = "Public IP of the instance"
  value       = aws_instance.web.public_ip
}
```

**必要的 MCP Server:**
- `@terraform/mcp-server-terraform`

**HCP Terraform 整合:**
```bash
@terraform 在 HCP Terraform 中建立新的 Workspace

@terraform 執行 terraform plan 並顯示結果

@terraform 套用變更到生產環境
```

---

## 快速參考表

### 依使用場景分類

| 使用場景 | 推薦 Agent | 指令範例 |
|---------|-----------|---------|
| 設計系統架構 | Senior Cloud Architect | `@arch 設計微服務架構` |
| 查詢最新文件 | Context7 Documentation Expert | `@context7 React 19 新功能` |
| 挑戰決策 | Critical Thinking Mode | `@critical-thinking 為什麼選擇這個方案?` |
| 建立測試 | Playwright Tester Mode | `@playwright 產生登入測試` |
| 撰寫 PRD | Create PRD Chat Mode | `@prd 使用者認證系統` |
| 程式碼重構 | Principal Software Engineer | `@principal-software-engineer 重構建議` |
| 基礎設施程式碼 | Terraform Agent | `@terraform 建立 EKS 叢集` |

### 依需要的 MCP Server 分類

| MCP Server | 相關 Agent |
|-----------|-----------|
| 無需 MCP Server | Senior Cloud Architect, Critical Thinking Mode, Principal Software Engineer, Create PRD Chat Mode |
| `@modelcontextprotocol/server-context7` | Context7 Documentation Expert |
| `@automatalabs/mcp-server-playwright` | Playwright Tester Mode |
| `@terraform/mcp-server-terraform` | Terraform Agent |

---

## 最佳實踐

### 1. 選擇正確的 Agent

- **架構設計階段** → `@arch`
- **技術選型疑問** → `@context7` + `@critical-thinking`
- **實作階段** → `@principal-software-engineer`
- **測試階段** → `@playwright`
- **需求定義** → `@prd`
- **基礎設施** → `@terraform`

### 2. 組合使用 Agents

```bash
# 先用 critical-thinking 挑戰假設
@critical-thinking 我們應該使用微服務嗎?

# 再用 arch 設計架構
@arch 基於上述討論,設計微服務架構

# 用 context7 查詢最新技術
@context7 Kubernetes 1.30 的新功能

# 用 principal-software-engineer 審查程式碼
@principal-software-engineer 審查這個實作
```

### 3. 提供清晰的上下文

❌ **不好的提問:**
```bash
@arch 設計一個系統
```

✅ **好的提問:**
```bash
@arch 設計一個電商平台,需求:
- 預估 10萬 DAU
- 需要支援即時庫存
- 99.9% 可用性
- 全球部署 (美國、歐洲、亞洲)
- PCI DSS 合規
```

### 4. 迭代改進

```bash
# 第一輪
@arch 設計微服務架構

# 根據輸出繼續提問
@arch 如何處理服務間的認證?

# 深入細節
@arch 產生 API Gateway 的詳細配置
```

---

## 故障排除

### 常見問題

**Q: Agent 沒有回應或回應不正確?**

A: 檢查:
1. Agent 檔案是否正確放置在 `.github/agents/` 目錄
2. 需要的 MCP Server 是否已安裝並配置
3. VS Code 是否已重新載入

**Q: Context7 Agent 無法查詢文件?**

A: 確認:
1. `@modelcontextprotocol/server-context7` MCP Server 已安裝
2. 網路連線正常
3. 函式庫名稱拼寫正確

**Q: Terraform Agent 無法連接 HCP Terraform?**

A: 檢查:
1. HCP Terraform API Token 是否配置
2. MCP Server 配置檔案中的認證設定
3. 網路防火牆設定

**Q: Playwright Agent 測試執行失敗?**

A: 嘗試:
1. 確認 Playwright MCP Server 已安裝
2. 檢查瀏覽器驅動程式是否更新
3. 查看測試失敗的詳細錯誤訊息

---

## 進階功能

### 自訂 Agent 行為

您可以編輯 `.github/agents/*.agent.md` 檔案來自訂 agent 的行為:

```markdown
---
version: 1.0
name: My Custom Agent
description: A specialized agent for my project
---

# My Custom Agent

[自訂指令內容]
```

### 建立自己的 Agent

參考現有 agent 的結構,建立新的 agent:

1. 複製現有 agent 檔案作為範本
2. 修改名稱、描述和指令
3. 儲存為 `.github/agents/your-agent.agent.md`
4. 重新載入 VS Code

---

## 相關資源

- 📖 [完整 Instructions 文件](README.instructions.md)
- 📝 [完整 Prompts 文件](README.prompts.md)
- 🏠 [返回主 README](../README.md)
- 💡 [GitHub Copilot 官方文件](https://docs.github.com/en/copilot)
- 🔧 [MCP Server Registry](https://github.com/modelcontextprotocol)

---

⭐ 如果這些 Agents 對您有幫助,請給專案一個星星!
