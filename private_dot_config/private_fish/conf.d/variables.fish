set -x fisher_path "$__fish_config_dir/plugins"

# set bat as the default viewer for man pages (colorized)
set -x MANPAGER "sh -c 'col -bx | bat -l man -p'"

set -x EDITOR nvim

set -x HOMEBREW_BUNDLE_FILE "$HOME/.config/brewfile/Brewfile"
