source $__fish_config_dir/conf.d/variables.fish
# source $__fish_config_dir/aliases.fish

# load plugins under custom "$fisher_path"
source "$__fish_config_dir/functions/fisher_path.fish"

# Install fisher, if it does not exist
if status is-interactive && ! functions --query fisher
    curl -sL https://git.io/fisher | source && fisher update
end

if status is-interactive
    # Commands to run in interactive sessions can go here
end



# Make Homebrew available
eval (/home/linuxbrew/.linuxbrew/bin/brew shellenv)




# Haskell stuff
set -q GHCUP_INSTALL_BASE_PREFIX[1]; or set GHCUP_INSTALL_BASE_PREFIX $HOME
set -gx PATH $HOME/.cabal/bin /home/jan/.ghcup/bin $PATH # ghcup-env

# asdf is a univeral runtime version manager (https://asdf-vm.com)
source /home/linuxbrew/.linuxbrew/opt/asdf/libexec/asdf.fish
