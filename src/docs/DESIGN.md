# 扩展性与防膨胀设计

## 原则

- **仅源级**：本仓库只维护「来源」级索引（每产地一行），不在此处枚举具体 skill。技能数量增长不导致本仓库体积或 OpenClaw 上下文膨胀。
- **索引与正文分离**：对外暴露给 OpenClaw 的只有 README（或仅含源级表的 INDEX）。若未来按来源拆子文档，也仅通过链接从 README 跳转，不把整站塞进一次引用。
- **按需加载**：Plugin 集成时只引用本仓库的「总览」skill（见 `.claude/skills/`），该 skill 的 references 指向 README；用户/Agent 需要细表时通过脚本 `list` / `search` 或打开具体链接，不预加载全部产地详情。

## 当 skills 数量暴增时

1. **保持 README 不变**：继续只列来源 + 一条安装/入口，不把成百上千个 skill 名写进 README。
2. **可选：分层索引**：若来源数量也很大，可拆成「总览 INDEX.md」+ 按类别/字母的 `sources/xxx.md`，README 只链到 INDEX，INDEX 再链到各子页；plugin 仍只引用 README 或 INDEX。
3. **脚本扩展**：若需按 skill 名检索，可新增独立数据文件（如 `data/skill-index.json`），仅供 `scripts/skills-market.sh search` 使用，**不**纳入 OpenClaw 的文档 references，避免上下文膨胀。
4. **优先查索引 + 脚本**：推荐流程——先看 README/索引定位来源，再用脚本 `search` 或到产地站点细查。
