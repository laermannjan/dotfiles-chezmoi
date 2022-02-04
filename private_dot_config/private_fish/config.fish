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
