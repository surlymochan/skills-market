# Skills Market

**三方 Agent Skills 综合索引** —— 按「来源」聚合主流 Skill 仓库，一处发现、按需安装，与 [ClawHub](https://github.com/openclaw/clawhub) 等生态并列使用。

- **源级索引**：只列产地与入口，不在此枚举海量 skill 名，避免文档与上下文膨胀。  
- **OpenClaw / Claude Code 友好**：plugin 仅引用本 README 或索引表，不拉取各站完整列表，适合集成到 Agent 与 IDE。

[English](README.md)

---

## 核心主流 Skill 仓库与代表技能

以下为当前**最主流、最具代表性**的 Skill 产地及其实测/官方列出的 **Top Skills**，便于你快速判断「该去哪个仓库找什么能力」。

| 仓库 / 来源 | 定位 | 代表 Skills（实际可获取） |
|-------------|------|---------------------------|
| **[anthropics/skills](https://github.com/anthropics/skills)** | Claude 官方示例与文档四件套，部分 source-available | **文档**：docx, pdf, pptx, xlsx；**示例**：algorithmic-art, canvas-design, frontend-design, slack-gif-creator, theme-factory, web-artifacts-builder, mcp-builder, webapp-testing, brand-guidelines, internal-comms, skill-creator |
| **[VoltAgent/awesome-agent-skills](https://github.com/VoltAgent/awesome-agent-skills)** | 380+ 精选，兼容 Codex / Antigravity / Gemini CLI / Cursor；按机构与社区分块 | **官方/文档**：docx, pdf, pptx, xlsx, frontend-design, skill-creator, mcp-builder, webapp-testing；**Vercel**：react-best-practices, vercel-deploy-claimable, next-best-practices；**HF**：hugging-face-cli, datasets, evaluation；**Stripe**：stripe-best-practices；**Sentry**：code-review, create-pr, find-bugs |
| **[skills.sh](https://skills.sh/)** | The Agent Skills Directory 主站，`npx skills add` 一键安装 | Leaderboard 代表：find-skills, vercel-react-best-practices, web-design-guidelines, remotion-best-practices, frontend-design, pdf, skill-creator, docx, xlsx, next-best-practices, systematic-debugging, webapp-testing, mcp-builder, canvas-design, brand-guidelines |
| **[K-Dense-AI/claude-scientific-skills](https://github.com/K-Dense-AI/claude-scientific-skills)** | 约 140 个科学领域技能，开源免费（生物/化学/医学/材料/ML） | **数据**：ChEMBL, PubMed, UniProt, COSMIC, ClinicalTrials.gov, OpenAlex, AlphaFold DB；**包**：RDKit, Scanpy, PyDESeq2, DeepChem, DiffDock, BioPython；**流程**：单细胞分析、虚拟筛选、临床变异解读、科学写作与文献 |
| **[MrGoonie/claudekit-skills](https://github.com/mrgoonie/claudekit-skills)** | 多步骤工作流与技能组合，链式任务与步骤化执行 | aesthetic, backend-development, better-auth, chrome-devtools, code-review, databases, debugging, devops, document-skills, frontend-design, mcp-builder, media-processing, payment-integration, problem-solving, sequential-thinking, shopify, skill-creator, threejs, ui-styling |
| **[bear2u/my-skills](https://github.com/bear2u/my-skills)** | 为 Claude Code 定制的自动化技能集 | card-news-generator, code-changelog, code-prompt-coach, design-prompt-generator-v2, flutter-init, frontend-design, landing-page-guide, meta-prompt-generator, nextjs15-init, prompt-enhancer, web-search, web-to-markdown, workthrough |
| **[czlonkowski/n8n-skills](https://github.com/czlonkowski/n8n-skills)** | 基于 n8n-mcp 的 n8n 工作流构建与节点编排 | n8n Expression Syntax；n8n MCP Tools Expert；n8n Workflow Patterns；n8n Validation Expert；n8n Node Configuration；n8n Code JavaScript；n8n Code Python |

更多产地（SuperPower、ComposioHQ、Antigravity awesome、BehiSecc、Travisvn、OpenAI 阵营等）见下方**完整索引表**。

---

## 完整索引表（按来源）

| 来源 | 说明 | 仓库 / 链接 | 安装或入口 |
|------|------|-------------|------------|
| **awesome-agent-skills** | 380+ 精选，兼容多端 | [VoltAgent/awesome-agent-skills](https://github.com/VoltAgent/awesome-agent-skills) | 浏览 README，按需 `npx skills add` 或 clone |
| **skills.sh** | 官方目录站 | [skills.sh](https://skills.sh/) | `npx skills add <repo_url> --skill <name> --agent claude-code -y` |
| **skill0** | 民间搜索（质量未统一验证） | [skill0.io](https://skill0.io) | 站内搜索后按结果安装 |
| **Claude 官方** | 官方示例与文档 | [anthropics/skills](https://github.com/anthropics/skills) | 见仓库 README，按 skill 目录安装 |
| **OpenAI 阵营** | 代码解释器场景文档类（已归档） | [openai/skills](https://github.com/openai/skills) | 见仓库 README |
| **SuperPower** | Agentic 框架与 TDD 等方法论 | [obra/superpowers](https://github.com/obra/superpowers) | 见仓库与 [aivi.fyi](https://www.aivi.fyi/llms/introduce-Superpowers) |
| **ComposioHQ** | 精选 Claude Skills / 工作流与工具 | [ComposioHQ/awesome-claude-skills](https://github.com/ComposioHQ/awesome-claude-skills) | 浏览列表后按条目安装 |
| **Antigravity awesome** | 600+ 大合集 | [sickn33/antigravity-awesome-skills](https://github.com/sickn33/antigravity-awesome-skills) | 见仓库 README 与子模块 |
| **BehiSecc** | Claude Skills 精选 | [BehiSecc/awesome-claude-skills](https://github.com/BehiSecc/awesome-claude-skills) | 浏览列表后安装 |
| **Travisvn** | Claude Code 向精选 | [travisvn/awesome-claude-skills](https://github.com/travisvn/awesome-claude-skills) | 同上 |
| **MrGoonie (ClaudeKit)** | 工作流与技能组合 | [mrgoonie/claudekit-skills](https://github.com/mrgoonie/claudekit-skills) | clone 后从 `.claude/skills` 拷贝 |
| **K-Dense-AI (Scientific)** | 约 140 个科学技能 | [K-Dense-AI/claude-scientific-skills](https://github.com/K-Dense-AI/claude-scientific-skills) | 见仓库与 [k-dense.ai](https://k-dense.ai/) |
| **Bear2u** | Claude Code 自动化技能集 | [bear2u/my-skills](https://github.com/bear2u/my-skills) | clone 后从 `skills/` 拷贝 |
| **N8N Skills** | n8n 工作流与节点编排 | [czlonkowski/n8n-skills](https://github.com/czlonkowski/n8n-skills) | 见仓库 README |

---

## 快速开始

```bash
# 克隆本仓库
git clone https://github.com/<your-org>/skills-market.git && cd skills-market

# 列出所有来源（与上表一致）
./src/scripts/skills-market.sh list

# 按关键词搜索来源名称/描述
./src/scripts/skills-market.sh search "科学"
./src/scripts/skills-market.sh search "n8n"
./src/scripts/skills-market.sh search "官方"
```

脚本输出为可复制的入口或安装说明，不执行自动安装。

---

## 项目结构

```
skills-market/
├── src/
│   ├── README.md          # 源级索引详表与脚本说明（与本文互补）
│   ├── data/
│   │   └── sources.tsv    # 来源数据（名称\t说明\t链接\t安装）
│   ├── scripts/
│   │   └── skills-market.sh
│   ├── docs/
│   │   └── DESIGN.md      # 防膨胀与扩展设计
│   └── .claude/
│       └── skills/
│           └── skills-market/   # 供 Claude/OpenClaw 引用的 skill
├── CONTRIBUTING.md
├── LICENSE
├── README.md              # 英文（默认）
└── README.zh-CN.md        # 本文件
```

---

## OpenClaw / Claude Code 集成

- 将本仓库（或其中的 `.claude/skills/skills-market`）加入 OpenClaw / Claude Code 的 skills 目录，Agent 即可通过 skill 引用**本 README 或仅含源级表的索引页**，无需在运行时拉取各产地完整列表，避免上下文膨胀。
- 细粒度检索可交给用户或本地执行：`scripts/skills-market.sh search <关键词>`。

更多集成细节见 [src/README.md](src/README.md)。

---

## 贡献

欢迎新增或修正信息源、改进脚本与文档。请阅读 [CONTRIBUTING.md](CONTRIBUTING.md) 了解约定与提交流程。

---

## License

[MIT](LICENSE)
