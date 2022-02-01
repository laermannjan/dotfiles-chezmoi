### binaries ###

if test -d $HOME/bin
    contains -- $HOME/bin $fish_user_paths
    or fish_add_path $HOME/bin
end

if test -d $HOME/.local/bin
    contains -- $HOME/.local/bin $fish_user_paths
    or fish_add_path $HOME/.local/bin
end
