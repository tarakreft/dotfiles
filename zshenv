export VIRTUAL_ENV_DISABLE_PROMPT="yup"
export LANG="en_US.UTF-8"
export LSCOLORS="ExfxcxdxBxegedabagacad"
export EDITOR="code --wait"
export GIT_EDITOR="$EDITOR"
export VISUAL="$EDITOR"
export PAGER="less"
export LESS="-R"

path=(
  "$HOME/.local/bin"
  "$HOME/.cargo/bin"
  "/sbin"
  "/usr/sbin"
  "/usr/local/bin"
  "/usr/local/sbin"
  $path
)

:maybe-source() {
  local file="$1"
  test -f "$file" && source "$file"
}

:has-cmd() {
  local cmd="$1"
  which "$cmd" >/dev/null 2>&1
}

:maybe-source ~/.after.zshenv.zsh
