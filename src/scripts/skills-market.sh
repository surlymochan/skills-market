#!/usr/bin/env bash
# skills-market: list / search 来源级索引，输出可复制的安装入口（不执行安装）
# 数据与 README 索引表同步，仅源级，避免上下文膨胀

set -e
SCRIPT_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"
# 脚本位于 <repo_root>/scripts/，repo_root 即 data/sources.tsv 所在目录（合并后为 src/）
ROOT_DIR="$(cd "$SCRIPT_DIR/.." && pwd)"

# 源级数据（与 README 索引表同步）：名称 TAB 说明 TAB 链接 TAB 安装/入口
SOURCES_DATA="$ROOT_DIR/data/sources.tsv"
if [[ ! -f "$SOURCES_DATA" ]]; then
  echo "缺少数据文件: $SOURCES_DATA" >&2
  exit 1
fi

list_sources() {
  echo "来源 | 说明 | 链接 | 安装/入口"
  echo "-----|------|------|------------"
  while IFS=$'\t' read -r name desc url install; do
    echo "$name | $desc | $url | $install"
  done < "$SOURCES_DATA"
}

search_sources() {
  local pattern="$1"
  if [[ -z "$pattern" ]]; then
    echo "用法: $0 search <关键词>" >&2
    exit 1
  fi
  echo "匹配 \"$pattern\" 的来源："
  echo ""
  while IFS=$'\t' read -r name desc url install; do
    if echo "$name $desc" | grep -qi "$pattern"; then
      echo "--- $name ---"
      echo "说明: $desc"
      echo "链接: $url"
      echo "安装/入口: $install"
      echo ""
    fi
  done < "$SOURCES_DATA"
}

case "${1:-}" in
  list)   list_sources ;;
  search) search_sources "${2:-}" ;;
  *)
    echo "用法: $0 list | search <关键词>" >&2
    echo "  list   按来源列出所有入口（与 README 表一致）" >&2
    echo "  search 按关键词搜索来源名称/描述，输出安装说明（不执行安装）" >&2
    exit 1
    ;;
esac
