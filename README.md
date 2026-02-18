# Skills Market

**A single index for third-party Agent Skills** — discover mainstream Skill repositories by source, install on demand. Works alongside [ClawHub](https://github.com/openclaw/clawhub) and similar ecosystems.

- **Source-level index**: Lists only sources and entry points, not every skill name, to avoid doc and context bloat.
- **OpenClaw / Claude Code friendly**: Plugins reference this README or the index table only; full lists are not pulled at runtime. Fits Agent and IDE integration.

[中文说明](README.zh-CN.md)

---

## Core Skill Repositories & Top Skills

Below are the **most widely used** Skill sources and their **top skills** (from official or community listings), so you can quickly decide where to find which capabilities.

| Repository / Source | Focus | Top Skills (actually available) |
|---------------------|--------|----------------------------------|
| **[anthropics/skills](https://github.com/anthropics/skills)** | Official Claude examples & document suite (docx/pdf/pptx/xlsx); part source-available | **Docs**: docx, pdf, pptx, xlsx; **Examples**: algorithmic-art, canvas-design, frontend-design, slack-gif-creator, theme-factory, web-artifacts-builder, mcp-builder, webapp-testing, brand-guidelines, internal-comms, skill-creator |
| **[VoltAgent/awesome-agent-skills](https://github.com/VoltAgent/awesome-agent-skills)** | 380+ curated; Codex / Antigravity / Gemini CLI / Cursor; by org & community | **Official/docs**: docx, pdf, pptx, xlsx, frontend-design, skill-creator, mcp-builder, webapp-testing; **Vercel**: react-best-practices, vercel-deploy-claimable, next-best-practices; **HF**: hugging-face-cli, datasets, evaluation; **Stripe**: stripe-best-practices; **Sentry**: code-review, create-pr, find-bugs |
| **[skills.sh](https://skills.sh/)** | The Agent Skills Directory; `npx skills add` one-click install | Leaderboard: find-skills, vercel-react-best-practices, web-design-guidelines, remotion-best-practices, frontend-design, pdf, skill-creator, docx, xlsx, next-best-practices, systematic-debugging, webapp-testing, mcp-builder, canvas-design, brand-guidelines |
| **[K-Dense-AI/claude-scientific-skills](https://github.com/K-Dense-AI/claude-scientific-skills)** | ~140 science skills (bio/chem/medical/materials/ML); open source, free | **Data**: ChEMBL, PubMed, UniProt, COSMIC, ClinicalTrials.gov, OpenAlex, AlphaFold DB; **Packages**: RDKit, Scanpy, PyDESeq2, DeepChem, DiffDock, BioPython; **Workflows**: single-cell, virtual screening, clinical variant interpretation, scientific writing & literature |
| **[MrGoonie/claudekit-skills](https://github.com/mrgoonie/claudekit-skills)** | Multi-step workflows & skill combos; chained tasks | aesthetic, backend-development, better-auth, chrome-devtools, code-review, databases, debugging, devops, document-skills, frontend-design, mcp-builder, media-processing, payment-integration, problem-solving, sequential-thinking, shopify, skill-creator, threejs, ui-styling |
| **[bear2u/my-skills](https://github.com/bear2u/my-skills)** | Automation skills for Claude Code | card-news-generator, code-changelog, code-prompt-coach, design-prompt-generator-v2, flutter-init, frontend-design, landing-page-guide, meta-prompt-generator, nextjs15-init, prompt-enhancer, web-search, web-to-markdown, workthrough |
| **[czlonkowski/n8n-skills](https://github.com/czlonkowski/n8n-skills)** | n8n workflow building & node orchestration via n8n-mcp | n8n Expression Syntax; n8n MCP Tools Expert; n8n Workflow Patterns; n8n Validation Expert; n8n Node Configuration; n8n Code JavaScript; n8n Code Python |

More sources (SuperPower, ComposioHQ, Antigravity awesome, BehiSecc, Travisvn, OpenAI, etc.) are in the **full index** below.

---

## Full Index (by source)

| Source | Description | Repo / link | Install or entry |
|--------|-------------|-------------|-------------------|
| **awesome-agent-skills** | 380+ curated, multi-platform | [VoltAgent/awesome-agent-skills](https://github.com/VoltAgent/awesome-agent-skills) | Browse README; `npx skills add` or clone as needed |
| **skills.sh** | Official directory | [skills.sh](https://skills.sh/) | `npx skills add <repo_url> --skill <name> --agent claude-code -y` |
| **skill0** | Community search (quality not verified) | [skill0.io](https://skill0.io) | Search on site, then follow install instructions |
| **Claude official** | Official examples & docs | [anthropics/skills](https://github.com/anthropics/skills) | See repo README; install by skill directory |
| **OpenAI** | Code-interpreter doc skills (archived) | [openai/skills](https://github.com/openai/skills) | See repo README |
| **SuperPower** | Agentic framework & TDD methodology | [obra/superpowers](https://github.com/obra/superpowers) | See repo & [aivi.fyi](https://www.aivi.fyi/llms/introduce-Superpowers) |
| **ComposioHQ** | Curated Claude Skills / workflows & tools | [ComposioHQ/awesome-claude-skills](https://github.com/ComposioHQ/awesome-claude-skills) | Browse list, install per entry |
| **Antigravity awesome** | 600+ collection | [sickn33/antigravity-awesome-skills](https://github.com/sickn33/antigravity-awesome-skills) | See repo README & submodules |
| **BehiSecc** | Curated Claude Skills | [BehiSecc/awesome-claude-skills](https://github.com/BehiSecc/awesome-claude-skills) | Browse list, then install |
| **Travisvn** | Claude Code–oriented curated list | [travisvn/awesome-claude-skills](https://github.com/travisvn/awesome-claude-skills) | Same as above |
| **MrGoonie (ClaudeKit)** | Workflows & skill combos | [mrgoonie/claudekit-skills](https://github.com/mrgoonie/claudekit-skills) | Clone and copy from `.claude/skills` |
| **K-Dense-AI (Scientific)** | ~140 science skills | [K-Dense-AI/claude-scientific-skills](https://github.com/K-Dense-AI/claude-scientific-skills) | See repo & [k-dense.ai](https://k-dense.ai/) |
| **Bear2u** | Claude Code automation skills | [bear2u/my-skills](https://github.com/bear2u/my-skills) | Clone and copy from `skills/` |
| **N8N Skills** | n8n workflows & node orchestration | [czlonkowski/n8n-skills](https://github.com/czlonkowski/n8n-skills) | See repo README |

---

## Quick start

```bash
# Clone this repo
git clone https://github.com/<your-org>/skills-market.git && cd skills-market

# List all sources (matches the table above)
./src/scripts/skills-market.sh list

# Search by keyword (source name/description)
./src/scripts/skills-market.sh search "science"
./src/scripts/skills-market.sh search "n8n"
./src/scripts/skills-market.sh search "official"
```

Script output is copy-pasteable entry or install text; it does not run installs.

---

## Project structure

```
skills-market/
├── src/
│   ├── README.md          # Source-level index details & script usage
│   ├── data/
│   │   └── sources.tsv    # Source data (name\tdescription\turl\tinstall)
│   ├── scripts/
│   │   └── skills-market.sh
│   ├── docs/
│   │   └── DESIGN.md      # Anti-bloat & extension design
│   └── .claude/
│       └── skills/
│           └── skills-market/   # Skill for Claude/OpenClaw
├── CONTRIBUTING.md
├── LICENSE
├── README.md              # This file (English)
└── README.zh-CN.md         # 中文说明
```

---

## OpenClaw / Claude Code integration

- Add this repo (or its `.claude/skills/skills-market`) to your OpenClaw / Claude Code skills directory. The agent can then reference **this README or a source-only index page** via the skill, without pulling full lists at runtime (keeps context small).
- For finer search, run locally: `scripts/skills-market.sh search <keyword>`.

More integration details: [src/README.md](src/README.md).

---

## Contributing

Contributions are welcome: new or corrected sources, script and doc improvements. See [CONTRIBUTING.md](CONTRIBUTING.md) for conventions and how to submit.

---

## License

[MIT](LICENSE)
