source <(kubectl completion zsh)

autoload bashcompinit && bashcompinit
autoload -Uz compinit && compinit

complete -C '/usr/local/bin/aws_completer' aws

export KUBE_EDITOR='nvim'
export XDG_CONFIG_HOME="$HOME/.config"