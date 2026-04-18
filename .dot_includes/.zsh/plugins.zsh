### Added by Zinit's installer
if [[ ! -f $HOME/.local/share/zinit/zinit.git/zinit.zsh ]]; then
    print -P "%F{33} %F{220}Installing %F{33}ZDHARMA-CONTINUUM%F{220} Initiative Plugin Manager (%F{33}zdharma-continuum/zinit%F{220})…%f"
    command mkdir -p "$HOME/.local/share/zinit" && command chmod g-rwX "$HOME/.local/share/zinit"
    command git clone https://github.com/zdharma-continuum/zinit "$HOME/.local/share/zinit/zinit.git" && \
        print -P "%F{33} %F{34}Installation successful.%f%b" || \
        print -P "%F{160} The clone has failed.%f%b"
fi
source "$HOME/.local/share/zinit/zinit.git/zinit.zsh"
autoload -Uz _zinit
(( ${+_comps} )) && _comps[zinit]=_zinit
### End of Zinit's installer chunk

# Native Plugins
zinit ice depth=1; zinit light romkatv/powerlevel10k
zinit ice wait lucid; zinit light zsh-users/zsh-completions
zinit ice wait lucid; zinit light zsh-users/zsh-autosuggestions
zinit ice wait lucid; zinit light zdharma-continuum/fast-syntax-highlighting
zinit ice wait lucid; zinit light agkozak/zsh-z
zinit ice wait lucid; zinit light Aloxaf/fzf-tab

# OMZ Plugins
zinit snippet OMZP::sudo
zinit snippet OMZP::copypath
zinit snippet OMZP::copyfile
zinit snippet OMZP::command-not-found

# OMZ Dependencies
zinit snippet OMZL::clipboard.zsh
