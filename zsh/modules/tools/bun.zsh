export BUN_INSTALL="$HOME/.bun"

# bun completions
source_if_exists "$BUN_INSTALL/_bun"

path_prepend "$BUN_INSTALL/bin"
