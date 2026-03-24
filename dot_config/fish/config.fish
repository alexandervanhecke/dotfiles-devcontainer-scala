if status is-interactive
    # Commands to run in interactive sessions can go here
    atuin init fish | source
    export NNN_OPTS="dEr"
    export NNN_PLUG='j:!jless "$nnn"*;l:!lazygit*'
    export NNN_BMS="a:$HOME/awv;o:$HOME/ou;m:$HOME/.config/nnn/mounts;n:$HOME/nobackup;h:$HOME;g:$HOME/github;c:$HOME/.config;l:$HOME/.local"
    export JAVA_HOME="/usr/local/sdkman/candidates/java/current"
    export EDITOR=nvim
    alias vi=nvim
    alias vim=nvim
    alias cm=chezmoi
    direnv hook fish | source
    bind \cr _atuin_search
    bind -M insert \cr _atuin_search
    alias ldd=lazydocker
    alias lg=lazygit
    alias n=nnn
    export PATH="/usr/local/bin:$PATH"
    export LANG=en_US.UTF-8
    export LC_ALL=en_US.UTF-8
    fish_vi_key_bindings
end

# >>> coursier install directory >>>
set -gx PATH "$PATH:/home/vscode/.local/share/coursier/bin"
# <<< coursier install directory <<<

