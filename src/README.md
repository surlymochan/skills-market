# Skills Market

三方 Agent Skills 综合索引：按**来源**聚合明星产地，便于发现与安装。与 [clawhub](https://github.com/openclaw/clawhub) 等并列使用。

- **粒度**：仅源级（每个产地一行入口），不枚举具体 skill，避免文档与上下文膨胀。
- **OpenClaw 集成**：在 plugin 中引用本仓库时，仅加载本 README 或 `INDEX.md`，不加载大列表或外部爬取结果，避免内存/上下文膨胀。

---

## 索引表（按来源）

| 来源 | 说明 | 仓库 / 链接 | 安装或入口 |
|------|------|-------------|------------|
| **awesome-agent-skills** | Claude Skills 与 200+ agent skills 精选，兼容 Codex / Antigravity / Gemini CLI / Cursor | [VoltAgent/awesome-agent-skills](https://github.com/VoltAgent/awesome-agent-skills) | 浏览 README 与链接，按需 clone 或 `npx skills add` 对应仓库 |
| **skills.sh** | The Agent Skills Directory，官方目录站 | [skills.sh](https://skills.sh/) | `npx skills add <repo_url> --skill <name> --agent claude-code -y`，详见站内说明 |
| **skill0** | 民间搜索（质量未验证） | [skill0.io](https://skill0.io) | 在站内搜索后按结果指引安装 |
| **Claude 官方** | Agent Skills 公开仓库 | [anthropics/skills](https://github.com/anthropics/skills) | 见仓库 README，按 skill 目录 clone 或通过支持该格式的客户端安装 |
| **OpenAI 阵营** | ChatGPT 代码解释器环境中的 skills（excel / pdf / word 等） | [eliasjudin/oai-skills](https://github.com/eliasjudin/oai-skills) | 见仓库 README |
| **SuperPower** | Agentic skills 框架与 TDD 等方法论 | [obra/superpowers](https://github.com/obra/superpowers) | 见仓库文档与教程（如 [aivi.fyi 介绍](https://www.aivi.fyi/llms/introduce-Superpowers)） |
| **ComposioHQ** | 精选 Claude Skills / 资源 / 工具，用于定制工作流 | [ComposioHQ/awesome-claude-skills](https://github.com/ComposioHQ/awesome-claude-skills) | 浏览列表后按条目 clone 或 `npx skills add` |
| **Antigravity awesome** | 600+ Agentic Skills 合集，含 Anthropic / Vercel 等官方 | [sickn33/antigravity-awesome-skills](https://github.com/sickn33/antigravity-awesome-skills) | 见仓库 README，按子模块或链接安装 |
| **BehiSecc** | Claude Skills 精选列表 | [BehiSecc/awesome-claude-skills](https://github.com/BehiSecc/awesome-claude-skills) | 浏览列表后按条目安装 |
| **Travisvn** | Claude Skills 与工具精选，偏 Claude Code | [travisvn/awesome-claude-skills](https://github.com/travisvn/awesome-claude-skills) | 同上 |
| **MrGoonie (ClaudeKit)** | 多步骤工作流与技能集合 | [mrgoonie/claudekit-skills](https://github.com/mrgoonie/claudekit-skills/tree/main/.claude/skills) | clone 仓库，将 `.claude/skills` 下对应 skill 拷到本地 skills 目录 |
| **K-Dense-AI (Scientific)** | 约 140 个科学领域技能（生物 / 化学 / 医学等） | [K-Dense-AI/claude-scientific-skills](https://github.com/K-Dense-AI/claude-scientific-skills) | 见仓库 README 与 [k-dense.ai](https://k-dense.ai/) |
| **Bear2u** | 为 Claude Code 定制的自动化技能集 | [bear2u/my-skills](https://github.com/bear2u/my-skills/tree/master/skills) | clone 后从 `skills/` 拷贝所需 skill |
| **N8N Skills** | 使用 n8n-mcp 构建 n8n 工作流的 Claude Code 技能 | [czlonkowski/n8n-skills](https://github.com/czlonkowski/n8n-skills) | 见仓库 README |

---

## 防膨胀与扩展说明

- **仅源级**：上表只列「产地」+ 一条入口/安装方式，不在此仓库内枚举具体 skill 名称。技能数量再多，本 README 体积保持恒定。
- **OpenClaw 引用**：plugin 仅引用本 README（或仅含上表的 `INDEX.md`），不拉取各产地完整列表进上下文。
- **细粒度检索**：需要按关键词找具体 skill 时，使用仓库内脚本 `scripts/skills-market.sh` 的 `list` / `search`（当前按来源名与描述检索）；若未来有 per-skill 索引需求，可增加独立数据文件供脚本读取，且该文件不纳入 OpenClaw 的文档引用。

---

## 脚本用法（可选）

```bash
# 列出所有来源（与上表一致）
./scripts/skills-market.sh list

# 按关键词搜索来源名称/描述（不搜索具体 skill 名）
./scripts/skills-market.sh search "科学"
./scripts/skills-market.sh search "n8n"
```

输出为可复制的入口或安装说明，不执行自动安装。

---

## OpenClaw 集成方式

- 在 openclaw-cn 的 plugin 中集成本仓库的 **skill**，使 Agent 通过 skill 引用本 README（源级索引），而无需在 OpenClaw 内实现「查市场」的 tool。
- 做法示例：将本仓库 clone 或 submodule 到 plugin 管理的 skills 目录下，或把 `.claude/skills/skills-market` 拷贝到 OpenClaw 的 skills 目录；确保该 skill 的 references 指向本仓库根目录的 `README.md`。
- 集成时**仅引用本 README**（或仅含源级表的索引页），不拉取各产地完整列表，避免内存/上下文膨胀。细粒度检索交给用户或脚本 `scripts/skills-market.sh search`。
