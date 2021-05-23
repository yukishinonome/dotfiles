alias zshrc='vim ~/.zshrc'
alias szshrc='source ~/.zshrc'
alias vimrc='vim ~/.vimrc'
alias gs='git status'
alias gsd='git switch -d'
alias gc='git checkout'
alias gcp='git cherry-pick'
alias gb='git branch'
alias hg='history | grep'
alias b='bundle'
alias be='bundle exec'
alias k='kubectl'
alias ke='kubectl exec'
alias kcg='kubectl config get-contexts'
alias kgp='kubectl get pods'
alias cppwd='pwd | tr -d "\n" | pbcopy'
alias de='docker exec'
alias dpf='docker ps --format "table {{.ID}} {{.Names}}\t{{.Image}}\t{{.Status}}\t{{.Ports}}"'

# プロンプトの表示
fpath=(~/.zsh $fpath)
if [ -f ${HOME}/.zsh/git-completion.zsh ]; then
        zstyle ':completion:*:*:git:*' script ~/.zsh/git-completion.zsh
fi
if [ -f ${HOME}/.zsh/git-prompt.sh ]; then
        source ${HOME}/.zsh/git-prompt.sh
fi
GIT_PS1_SHOWDIRTYSTATE=true
GIT_PS1_SHOWUNTRACKEDFILES=true
GIT_PS1_SHOWSTASHSTATE=true
GIT_PS1_SHOWUPSTREAM=auto
setopt PROMPT_SUBST ; PS1='%F{green}%~%f%F{red}$(__git_ps1 " (%s)")%f
\$ '

# 履歴ファイルの保存先
export HISTFILE=${HOME}/.zsh_history

# メモリに保存される履歴の件数
export HISTSIZE=1000

# 履歴ファイルに保存される履歴の件数
export SAVEHIST=100000

# 重複を記録しない
setopt hist_ignore_all_dups

# 開始と終了を記録
setopt EXTENDED_HISTORY

# 履歴検索
function select-history() {
        local tac
        if which tac > /dev/null; then
                tac="tac"
        else
                tac="tail -r"
        fi
        BUFFER=$(fc -l -n 1 | eval $tac | peco --query "$LBUFFER")
        CURSOR=$#BUFFER
        zle -R -c
}

zle -N select-history
bindkey '^r' select-history

# コマンド予測を有効にする
source ~/.zsh/zsh-autosuggestions/zsh-autosuggestions.zsh
