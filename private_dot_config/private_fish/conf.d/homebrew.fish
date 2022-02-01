if [ -e /usr/local/bin/brew ]
    eval (/usr/local/bin/brew shellenv)
end

if [ -e /opt/homebrew/bin/brew ]
    eval (/opt/homebrew/bin/brew shellenv)
end

if [ -e /home/linuxbrew/.linuxbrew/bin/brew ]
    eval (/home/linuxbrew/.linuxbrew/bin/brew shellenv)
end

# if test -f (brew --prefix)/etc/brew-wrap.fish
#     source (brew --prefix)/etc/brew-wrap.fish
# end
