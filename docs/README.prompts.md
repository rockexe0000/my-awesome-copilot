# 🎯 提示範本 (Prompts)

預建的提示檔案用於常見開發工作流程,定義特定模式、模型和可用工具集的提示文字。

Ready-to-use prompt templates for specific development scenarios and tasks, defining prompt text with a specific mode, model, and available set of tools.

## 使用方式 / How to Use Reusable Prompts

### 在 GitHub Copilot Chat 中使用

在 GitHub Copilot Chat 中使用以下格式:

```markdown
Follow instructions in [prompt-file-name.prompt.md](file:///.github/prompts/prompt-file-name.prompt.md)
```

**範例:**

```markdown
# 產生繁中雙語 README (推薦)
Follow instructions in [create-readme-comprehensive.prompt.md](file:///.github/prompts/create-readme-comprehensive.prompt.md)

# 產生英文 README (快速)
Follow instructions in [create-readme-quick.prompt.md](file:///.github/prompts/create-readme-quick.prompt.md)

# 標準化 Git 提交訊息
Follow instructions in [conventional-commit.prompt.md](file:///.github/prompts/conventional-commit.prompt.md)
```

### 在 VS Code 中安裝 (Optional)

**To Install:**
- Click the **VS Code** or **VS Code Insiders** install button for the prompt you want to use
- Download the `*.prompt.md` file and manually add it to your prompt collection

**To Run/Execute:**
- Use `/prompt-name` in VS Code chat after installation
- Run the `Chat: Run Prompt` command from the Command Palette
- Hit the run button while you have a prompt file open in VS Code

## 提示範本清單 / Prompt Templates List

### 📄 文件與藍圖產生

#### create-readme-comprehensive.prompt.md ⭐ 推薦

[查看完整檔案](../.github/prompts/create-readme-comprehensive.prompt.md)

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
  - **📁 檔案命名與目錄規範**: 強制使用 kebab-case,標準目錄結構 (docs/, docs/assets/images/)
  - **📏 文件大小管理**: 自動偵測文件大小,提供拆分建議 (超過 6,000 字)
- **三種深度級別**:
  - **Minimal** (小型專案): 5 核心章節, 500-1000 字, 無圖表
  - **Standard** (中型專案): 10+ 章節, 1500-3000 字, 1-2 圖表
  - **Comprehensive** (大型專案): 20+ 章節, 3000-6000 字, 5-10 圖表
- **使用方式**:
  ```bash
  # 在 GitHub Copilot Chat 中使用
  Follow instructions in [create-readme-comprehensive.prompt.md](file:///.github/prompts/create-readme-comprehensive.prompt.md)
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

#### create-readme-quick.prompt.md

[查看完整檔案](../.github/prompts/create-readme-quick.prompt.md)

- **用途**: 快速產生英文 README (簡潔版)
- **功能**:
  - 純英文輸出
  - **📁 檔案命名規範**: kebab-case 標準化 (getting-started.md, api-reference.md)
  - **🗂️ 標準目錄結構**: docs/ 目錄組織規範與 SEO 友善路徑
  - **📏 文件分割指南**: README 大小管理策略與拆分最佳實踐
  - 參考優秀開源專案範例 (Azure Samples, sinedied 專案)
  - 使用 GFM (GitHub Flavored Markdown) 格式
  - 簡潔明瞭的結構
  - 自動偵測 Logo/Icon
  - 適度使用 emoji
- **使用方式**:
  ```bash
  # 在 GitHub Copilot Chat 中使用
  Follow instructions in [create-readme-quick.prompt.md](file:///.github/prompts/create-readme-quick.prompt.md)
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

#### copilot-instructions-blueprint-generator.prompt.md

[查看完整檔案](../.github/prompts/copilot-instructions-blueprint-generator.prompt.md)

- **用途**: 建立全面的 copilot-instructions.md 檔案,指導 GitHub Copilot 產生符合專案標準的程式碼
- **功能**:
  - 技術版本精確偵測 (語言、框架、函式庫版本)
  - 程式碼庫模式分析 (命名慣例、架構模式、錯誤處理)
  - 架構一致性維護
  - 特定技術指南生成
  - 自動化文件結構
- **使用時機**: 需要為新專案或現有專案建立 Copilot 指令檔案時

#### readme-blueprint-generator.prompt.md

[查看完整檔案](../.github/prompts/readme-blueprint-generator.prompt.md)

- **用途**: 透過分析專案文件結構建立全面的 README.md
- **功能**:
  - 掃描 `.github/copilot` 目錄檔案
  - 提取專案資訊、技術堆疊、架構
  - 生成結構良好的 Markdown 文件
  - 自動化索引和連結生成
- **使用時機**: 需要基於現有文件自動生成 README 時

#### technology-stack-blueprint-generator.prompt.md

[查看完整檔案](../.github/prompts/technology-stack-blueprint-generator.prompt.md)

- **用途**: 分析程式碼庫以建立詳細的架構文件,自動偵測技術堆疊
- **功能**:
  - 技術識別 (語言、框架、函式庫版本)
  - 實作模式和慣例文件化
  - 使用範例提取
  - 技術關係圖生成
  - 相依性分析
- **使用時機**: 需要為專案建立全面的技術堆疊文件時

#### create-agents.md.prompt.md

[查看完整檔案](../.github/prompts/create-agentsmd.prompt.md)

- **用途**: 為儲存庫建立高品質的 AGENTS.md 檔案
- **功能**:
  - 遵循 agents.md 公開格式
  - 提供專案概述、設定命令、開發工作流程
  - 包含測試指令、程式碼風格指南、建構和部署資訊
  - AI 代理優化的結構化內容
- **使用時機**: 需要為 AI 編碼代理提供專案上下文和指令時

#### create-architectural-decision-record.prompt.md

[查看完整檔案](../.github/prompts/create-architectural-decision-record.prompt.md)

- **用途**: 建立針對 AI 優化的架構決策記錄 (ADR) 文件
- **功能**:
  - 使用標準化 ADR 格式
  - 記錄決策、替代方案、後果
  - 包含實作註記和參考資料
  - 版本控制和追蹤
- **使用時機**: 需要記錄重要的架構決策時

#### documentation-writer.prompt.md

[查看完整檔案](../.github/prompts/documentation-writer.prompt.md)

- **用途**: Diátaxis 文件專家,建立高品質的軟體文件
- **功能**:
  - 遵循 Diátaxis 框架 (教學 Tutorials、操作指南 How-to Guides、參考 Reference、說明 Explanation)
  - 提供結構化工作流程
  - 確保清晰度、準確性、使用者為中心、一致性
  - 多種文件類型支援
- **使用時機**: 需要建立結構化、高品質的技術文件時

### 🔧 開發輔助工具

#### conventional-commit.prompt.md

[查看完整檔案](../.github/prompts/conventional-commit.prompt.md)

- **用途**: 使用結構化 XML 格式生成符合 Conventional Commits 規範的提交訊息
- **功能**:
  - 提供提交訊息結構範本 (type, scope, subject, body, footer)
  - 自動執行 `git commit` 命令
  - 驗證提交訊息格式
  - 支援多種提交類型 (feat, fix, docs, style, refactor, test, chore)
- **使用時機**: 需要建立標準化的 Git 提交訊息時

#### create-implementation-plan.prompt.md

[查看完整檔案](../.github/prompts/create-implementation-plan.prompt.md)

- **用途**: 為新功能、重構、套件升級或架構變更建立新的實作計畫檔案
- **功能**:
  - 機器可讀、確定性的結構化計畫
  - 離散的原子階段和可執行任務
  - 包含需求、約束、依賴項、測試策略、風險評估
  - 驗證標準和成功指標
- **使用時機**: 開始新功能開發或重大重構任務時

#### update-implementation-plan.prompt.md

[查看完整檔案](../.github/prompts/update-implementation-plan.prompt.md)

- **用途**: 基於新需求或更新需求更新現有的實作計畫檔案
- **功能**:
  - 更新現有計畫結構
  - 維護任務追蹤和狀態
  - 更新日期和完成度
  - 保持計畫一致性
- **使用時機**: 實作計畫需要根據新需求進行更新時

#### update-specification.prompt.md

[查看完整檔案](../.github/prompts/update-specification.prompt.md)

- **用途**: 基於新需求或現有程式碼更新,更新現有的規格檔案,針對生成式 AI 消費優化
- **功能**:
  - 更新需求、約束和介面
  - 維護 AI 就緒規格格式
  - 包含驗證標準和測試策略
  - 確保規格可追溯性
- **使用時機**: 規格需要反映最新的需求變更或實作更新時

#### prompt-builder.prompt.md

[查看完整檔案](../.github/prompts/prompt-builder.prompt.md)

- **用途**: 引導使用者建立高品質的 GitHub Copilot 提示,具備適當的結構、工具和最佳實務
- **功能**:
  - 系統性收集需求
  - 生成完整、生產就緒的提示檔案
  - 整合最佳實務和 YAML front matter
  - 提供範本和範例
- **使用時機**: 需要建立新的 .prompt.md 檔案時

### 🧹 程式碼品質與維護

#### review-and-refactor.prompt.md

[查看完整檔案](../.github/prompts/review-and-refactor.prompt.md)

- **用途**: 根據定義的指令審查和重構專案中的程式碼
- **功能**:
  - 審查所有編碼指南指令
  - 進行必要的程式碼重構
  - 確保測試仍然通過
  - 提供重構報告和建議
- **使用時機**: 需要對整個專案進行程式碼品質審查和重構時

#### update-markdown-file-index.prompt.md

[查看完整檔案](../.github/prompts/update-markdown-file-index.prompt.md)

- **用途**: 使用指定資料夾中的檔案索引/表格更新 Markdown 檔案區段
- **功能**:
  - 掃描和發現檔案
  - 生成適當的表格/清單格式
  - 提取檔案描述 (從 YAML front matter)
  - 自動更新索引章節
- **使用時機**: 需要在文件中維護檔案清單或索引時

#### update-oo-component-documentation.prompt.md

[查看完整檔案](../.github/prompts/update-oo-component-documentation.prompt.md)

- **用途**: 遵循業界最佳實務和架構文件標準更新現有的物件導向元件文件
- **功能**:
  - 分析當前元件實作
  - 更新 C4 模型文件
  - 更新 UML 圖表和架構資訊
  - 同步程式碼和文件
- **使用時機**: 元件程式碼變更後需要同步更新文件時

### 🔍 專案發現與建議

#### suggest-awesome-github-copilot-instructions.prompt.md

[查看完整檔案](../.github/prompts/suggest-awesome-github-copilot-instructions.prompt.md)

- **用途**: 基於當前儲存庫上下文和聊天歷史,從 awesome-copilot 儲存庫建議相關的 Copilot 指令檔案
- **功能**:
  - 獲取可用指令清單
  - 掃描本地指令
  - 比較現有指令以避免重複
  - 提供結構化的建議表格 (類別、檔案名稱、描述、相關性評分)
- **使用時機**: 需要發現和安裝適合專案的 Copilot 指令時

#### suggest-awesome-github-copilot-prompts.prompt.md

[查看完整檔案](../.github/prompts/suggest-awesome-github-copilot-prompts.prompt.md)

- **用途**: 基於當前儲存庫上下文和聊天歷史,從 awesome-copilot 儲存庫建議相關的提示檔案
- **功能**:
  - 獲取可用提示清單
  - 掃描本地提示
  - 比較現有提示以避免重複
  - 提供結構化的建議表格
- **使用時機**: 需要發現和安裝適合專案的 Copilot 提示時

#### agent-builder.prompt.md

[查看完整檔案](../.github/prompts/agent-builder.prompt.md)

- **用途**: 引導使用者建立高品質的 GitHub Copilot Agent 定義檔案,具備適當的結構和最佳實務
- **功能**:
  - 系統性收集 Agent 需求 (角色、目標、工具、行為)
  - 生成完整、生產就緒的 .agent.md 檔案
  - 整合最佳實務和 YAML front matter
  - 提供範本和範例
  - 確保 Agent 定義的一致性和可維護性
- **使用時機**: 需要建立新的 AI Agent 定義時
