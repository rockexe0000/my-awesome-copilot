# 貢獻指南

感謝您有興趣為 My Awesome Copilot 專案做出貢獻！我們歡迎所有形式的貢獻，無論是新功能、錯誤修復、文件改進還是使用範例。

## 行為準則

參與本專案即表示您同意遵守我們的行為準則。請以尊重和包容的態度對待所有貢獻者。

## 如何貢獻

### 回報錯誤

如果您發現錯誤，請：

1. 檢查 [Issues](https://github.com/rockexe0000/my-awesome-copilot/issues) 確認該問題尚未被回報
2. 建立新的 Issue，並提供：
   - 清楚的標題和描述
   - 重現步驟
   - 預期行為與實際行為
   - 環境資訊（作業系統、版本等）
   - 相關的螢幕截圖或錯誤訊息

### 建議新功能

我們歡迎新功能建議！請：

1. 檢查現有的 Issues 和 Pull Requests
2. 建立新的 Issue，說明：
   - 功能的用途和價值
   - 預期的行為
   - 可能的實作方式
   - 使用場景和範例

### 提交程式碼

#### 開發流程

1. **Fork 專案**
   ```bash
   git clone https://github.com/your-username/my-awesome-copilot.git
   cd my-awesome-copilot
   ```

2. **建立功能分支**
   ```bash
   git checkout -b feature/your-feature-name
   ```

3. **進行更改**
   - 遵循專案的程式碼風格
   - 為新功能添加適當的文件
   - 確保您的更改不會破壞現有功能

4. **提交更改**
   
   使用 [Conventional Commits](https://www.conventionalcommits.org/) 規範：
   
   ```bash
   git commit -m "feat: 新增某某功能"
   git commit -m "fix: 修正某某問題"
   git commit -m "docs: 更新文件"
   ```

   提交類型：
   - `feat`: 新功能
   - `fix`: 錯誤修復
   - `docs`: 文件更新
   - `style`: 程式碼格式調整
   - `refactor`: 程式碼重構
   - `test`: 測試相關
   - `chore`: 建構或輔助工具的變動

5. **推送到 GitHub**
   ```bash
   git push origin feature/your-feature-name
   ```

6. **建立 Pull Request**
   - 提供清楚的標題和描述
   - 引用相關的 Issues
   - 說明更改的內容和原因
   - 添加必要的截圖或範例

#### Pull Request 準則

- **一次解決一個問題**：每個 PR 應該專注於單一功能或修復
- **保持更改最小化**：只修改必要的檔案
- **撰寫清楚的提交訊息**：使用 Conventional Commits 規範
- **更新文件**：如果您的更改影響到使用方式，請更新相關文件
- **測試您的更改**：確保更改能正常運作

### 文件貢獻

文件改進同樣重要！您可以：

- 修正拼寫或語法錯誤
- 改進現有說明的清晰度
- 添加使用範例
- 翻譯文件到其他語言
- 添加教學或指南

### 貢獻指令或提示範本

如果您想貢獻新的 GitHub Copilot 指令或提示範本：

1. **指令檔案** (`instructions/`)
   - 使用 `.instructions.md` 副檔名
   - 在檔案開頭包含 YAML front matter,說明適用範圍
   - 提供清楚的說明和範例
   - 遵循現有指令的結構

2. **提示檔案** (`prompts/`)
   - 使用 `.prompt.md` 副檔名
   - 提供清楚的使用說明
   - 包含範例輸出
   - 說明適用場景

> [!NOTE]
> 本專案的指令和提示檔案位於 `instructions/` 和 `prompts/` 目錄。使用時需要複製或符號連結到 `.github/` 目錄。

## 程式碼風格

- 使用 Markdown 格式撰寫文件
- 保持一致的縮排和格式
- 使用清楚、描述性的命名
- 添加適當的註解說明複雜邏輯

## 檔案結構

```
my-awesome-copilot/
├── agents/                  # AI 代理配置
├── instructions/            # GitHub Copilot 指令檔案
├── prompts/                # 提示範本
├── docs/                   # 文件目錄
├── README.md               # 專案說明
├── CONTRIBUTING.md         # 本檔案
├── LICENSE                 # 授權資訊
└── .gitignore             # Git 忽略規則
```

> [!NOTE]
> `agents/`, `instructions/`, `prompts/` 目錄在使用時需要複製或符號連結到 `.github/` 目錄下。

## 版本發布

專案維護者會定期發布新版本。版本號遵循 [Semantic Versioning](https://semver.org/)：

- `MAJOR.MINOR.PATCH`
- MAJOR：不相容的 API 變更
- MINOR：向後相容的新功能
- PATCH：向後相容的錯誤修復

## 問題與支援

- 📧 有疑問？建立一個 [Issue](https://github.com/rockexe0000/my-awesome-copilot/issues)
- 💬 想要討論？使用 [Discussions](https://github.com/rockexe0000/my-awesome-copilot/discussions)
- 🐛 發現錯誤？請回報 Issue

## 授權

提交貢獻即表示您同意您的程式碼將以 MIT 授權發布。

## 感謝

感謝所有為本專案做出貢獻的人！您的努力讓這個專案變得更好。

---

再次感謝您的貢獻！🎉
