---
agent: 'agent'
description: 'Create a README.md file for the project (Quick English version)'
---

## Role

You're a senior expert software engineer with extensive experience in open source projects. You always make sure the README files you write are appealing, informative, and easy to read.

## Task

1. Take a deep breath, and review the entire project and workspace, then create a comprehensive and well-structured README.md file for the project.
2. Take inspiration from these readme files for the structure, tone and content:
   - https://raw.githubusercontent.com/Azure-Samples/serverless-chat-langchainjs/refs/heads/main/README.md
   - https://raw.githubusercontent.com/Azure-Samples/serverless-recipes-javascript/refs/heads/main/README.md
   - https://raw.githubusercontent.com/sinedied/run-on-output/refs/heads/main/README.md
   - https://raw.githubusercontent.com/sinedied/smoke/refs/heads/main/README.md
3. Do not overuse emojis, and keep the readme concise and to the point.
4. **DO NOT use emojis in headings (H1-H6).** Emojis in headings cause anchor link issues and reduce accessibility. Emojis are acceptable in content, admonitions, lists, and tables.
   ```markdown
   ❌ Bad: ### 📋 Features
   ✅ Good: ### Features
   ```
5. Do not include sections like "LICENSE", "CONTRIBUTING", "CHANGELOG", etc. There are dedicated files for those sections.
6. Use GFM (GitHub Flavored Markdown) for formatting, and GitHub admonition syntax (https://github.com/orgs/community/discussions/16925) where appropriate.
7. If you find a logo or icon for the project, use it in the readme's header.
8. **If the project has 10+ sections, include a simple Table of Contents after the header (without emojis in TOC headings):**
   ```markdown
   ## Table of Contents
   
   - [Features](#features)
   - [Prerequisites](#prerequisites)
   - [Installation](#installation)
   - [Usage](#usage)
   - [API Reference](#api-reference)
   - [Contributing](#contributing)
   - [License](#license)
   ```
   **Anchor link rules:** Use lowercase slugs, remove punctuation (. , : ; ! ? () [] {}), replace spaces with hyphens (-). For bilingual headers like "功能 / Features", use double hyphens to separate: `#功能--features`.

## Directory Structure & File Organization

### File Naming Conventions

**ALWAYS use kebab-case** (lowercase with hyphens) for all filenames:

```markdown
✅ Good:
- getting-started.md
- installation-guide.md
- api-reference.md
- troubleshooting-common-issues.md

❌ Bad:
- GettingStarted.md (CamelCase)
- install_guide.md (snake_case)
- API-Reference.md (mixed case)
```

**Rationale:**
- **SEO-friendly**: Hyphens are treated as word separators by search engines
- **URL compatibility**: Linux servers are case-sensitive; kebab-case avoids link errors
- **Readability**: More readable than underscores
- **Industry standard**: Used by GitHub, GitLab, and major platforms

### Folder Organization

**Standard directory structure:**

```
project-root/
├── README.md                 # Project overview and quick start (required)
├── CONTRIBUTING.md           # Contribution guidelines (recommended)
├── CHANGELOG.md              # Change log (recommended)
├── LICENSE                   # License file (required)
├── CODE_OF_CONDUCT.md        # Code of conduct (optional)
│
├── docs/                     # Documentation root
│   ├── index.md             # Documentation homepage/index
│   ├── getting-started.md   # Getting started guide
│   ├── installation.md      # Installation instructions
│   ├── configuration.md     # Configuration guide
│   │
│   ├── api/                 # API documentation
│   │   ├── overview.md
│   │   ├── authentication.md
│   │   └── endpoints.md
│   │
│   ├── tutorials/           # Tutorials and examples
│   │   ├── basic-usage.md
│   │   └── advanced-features.md
│   │
│   ├── guides/              # Advanced guides
│   │   ├── deployment.md
│   │   └── troubleshooting.md
│   │
│   └── assets/              # Static assets
│       └── images/          # Image resources
│           ├── architecture-diagram.png
│           └── workflow.svg
│
└── src/                     # Source code
```

**Directory purposes:**

| Directory | Purpose | Required |
|-----------|---------|----------|
| `docs/` | Root folder for all documentation | Yes |
| `docs/assets/images/` | Store all static images | Yes |
| `docs/api/` | API reference documentation | As needed |
| `docs/tutorials/` | Tutorials and examples | Recommended |
| `docs/guides/` | Advanced guides | Recommended |

### README Size Management

**Principle: Keep README.md concise. Split complex documentation into separate files.**

#### Size Guidelines

🟢 **Recommended ranges:**
- Simple projects: 500-1,500 words
- Medium projects: 1,500-3,000 words
- Complex projects: 3,000-5,000 words

🟡 **Should consider splitting (6,000+ words):**
- More than 20 sections
- 10+ code examples
- 10+ diagrams

🔴 **Must split (10,000+ words):**
- More than 30 sections
- Scrolling exceeds 5 screen heights

#### Splitting Strategies

**Scenario 1: Extensive API documentation**

*Before splitting:*
```markdown
## README.md (12,000 words)
- Quick Start
- Installation
- API Reference (5,000 words) ❌ Too long
  - Authentication
  - Endpoints (30+)
  - Error codes
```

*After splitting:*
```markdown
## README.md (3,000 words) ✅
- Quick Start
- Installation
- Basic Usage
- → [Full API Documentation](docs/api/README.md)

## docs/api/README.md ✅
- API Overview
- [Authentication](authentication.md)
- [Endpoint Reference](endpoints.md)
- [Error Handling](error-handling.md)
```

**Scenario 2: Complex deployment guides**

*Before:*
```markdown
## README.md (15,000 words)
- Deployment (8,000 words) ❌
  - Docker deployment
  - Kubernetes deployment
  - AWS deployment
  - Azure deployment
```

*After:*
```markdown
## README.md ✅
- Quick Deployment (Docker)
- → [Full Deployment Guide](docs/deployment/README.md)

## docs/deployment/ ✅
- README.md (overview)
- docker-deployment.md
- kubernetes-deployment.md
- aws-deployment.md
- azure-deployment.md
```

**Scenario 3: Monorepo with multiple languages**

*After splitting:*
```markdown
## README.md (root) ✅
- Project overview
- Monorepo structure
- Quick start
- Links to subprojects

## packages/frontend/README.md ✅
- React frontend documentation

## packages/backend/README.md ✅
- Node.js backend documentation
```

#### Splitting Checklist

**Consider splitting when README.md has:**

- [ ] Single section exceeds 1,500 words
- [ ] 5+ detailed configuration examples
- [ ] Complete API reference (10+ endpoints)
- [ ] Multi-environment deployment guides (3+ environments)
- [ ] Complex troubleshooting section (10+ issues)
- [ ] Detailed architecture explanations (5+ diagrams)
- [ ] Multiple independent tutorials (3+ tutorials)

**After splitting, README.md should include:**

- [ ] One-sentence project description
- [ ] Core features list (3-5 items)
- [ ] Quick start (3-5 steps)
- [ ] Basic usage example (1-2 examples)
- [ ] Links to detailed documentation
- [ ] Contributing and license information

**Documentation link format:**

```markdown
## Detailed Documentation

For more information, see:

- 📖 [Installation Guide](docs/installation.md) - Detailed steps and troubleshooting
- 🔧 [Configuration Reference](docs/configuration.md) - All configuration options
- 🚀 [Deployment Guide](docs/deployment/README.md) - Multi-environment strategies
- 📚 [API Documentation](docs/api/README.md) - Complete API reference
- 🎓 [Tutorials](docs/tutorials/README.md) - Step-by-step guides
- ❓ [Troubleshooting](docs/troubleshooting.md) - Common issues and solutions

> [!TIP]
> New users should start with the [Getting Started Guide](docs/getting-started.md)!
```