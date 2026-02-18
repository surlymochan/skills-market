# Contributing to Skills Market

感谢你对 Skills Market 的关注与贡献。

## 如何参与

- **新增或修正信息源**：在 `src/data/sources.tsv` 中按「名称 TAB 说明 TAB 链接 TAB 安装/入口」格式添加或修改一行，并同步更新 `src/README.md` 中的索引表。
- **改进脚本**：`src/scripts/skills-market.sh` 支持 `list` 与 `search`，可扩展为支持更多筛选或输出格式。
- **文档与 Skill**：`src/docs/DESIGN.md` 为防膨胀与扩展设计；`.claude/skills/skills-market/SKILL.md` 为供 Claude/OpenClaw 引用的 skill 入口，可补充各源 Top Skills 等说明。

## 约定

- 本仓库采用**源级索引**：只列「来源」与每源一条安装/入口，不在此仓库内枚举大量具体 skill 名，以避免文档与上下文膨胀。
- 修改后请确保 `./scripts/skills-market.sh list` 与 `search <关键词>` 能正常输出；若有新来源，请在 README 中保留与 `data/sources.tsv` 的对应关系。

## 提交流程

1. Fork 本仓库，在分支上修改。
2. 确认 `data/sources.tsv` 与 README 索引表一致（若有改动）。
3. 提交 Pull Request，说明修改内容与来源依据（如官方 README、目录页链接）。

维护者将根据社区反馈与上游变更合并 PR。若你有内部迭代流程（如 MRD/PRD/merge），请在 PR 描述中简要说明，便于协作。
