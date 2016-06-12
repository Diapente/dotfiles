export VISUAL="vim"
# Lines configured by zsh-newuser-install
HISTFILE=~/.histfile
HISTSIZE=1000
SAVEHIST=1000
bindkey -v
# End of lines configured by zsh-newuser-install
# The following lines were added by compinstall
zstyle :compinstall filename '/home/nicolas/.zshrc'
zstyle ':completion:*' menu select

autoload -Uz compinit
compinit
# End of lines added by compinstall

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

# Prompt Config
# the following line controls colors on Linux (not OS X)
autoload -Uz colors && colors
PROMPT='[%n@%m:%~]→ '
#PROMPT="%{$fg[yellow]%}%n%{$reset_color%}@%{$fg[magenta]%}%m %{$fg_no_bold[yellow]%}%1~ %{$reset_color%}%# "
# Aliases

# for Linux (not OS X)
#alias ls='ls --color=auto'

#mounting keychain usb
alias usb='udiskie-mount /dev/disk/by-uuid/D0D0-C062'
alias umusb='udiskie-umount /dev/disk/by-uuid/D0D0-C062'

#scan script (~/Pictures/Wallpapers)
alias scanbg='~/.config/cwallpaper/makeList.sh'

#mutt background fix for Linux (not OS X)
COLORFGBG="default;default"

#terminal 256 colors for Linux (not OS X)
export TERM=rxvt

#Titlebar completion for Linux (not OS X)
#case $TERM in
#        termite|*xterm*|rxvt|rxvt-unicode|rxvt-256color|rxvt-unicode-256color|(dt|k|E)term)
#                    precmd () { print -Pn "\e]0;terminal\a" } 
#                            preexec () { print -Pn "\e]0;$1\a" }
#                                ;;
#                                    screen|screen-256color)
#                                                precmd () { 
#                                                                print -Pn "\e]83;title \"$1\"\a" 
#                                                                            print -Pn "\e]0;$TERM\a" 
#                                                                                    }
#                                                                                            preexec () { 
#                                                                                                            print -Pn "\e]83;title \"$1\"\a" 
#                                                                                                                        print -Pn "\e]0;$TERM - $1\a" 
#                                                                                                                                }
#                                                                                                                                    ;; 
#                                                                                                                            esac

#keybindings
bindkey "${terminfo[khome]}" beginning-of-line
bindkey "${terminfo[kend]}" end-of-line
bindkey "\e[3~" delete-char
bindkey "${terminfo[kich1]}" quoted-insert

# zsh-syntax-highlighting for Linux
#source /usr/share/zsh/plugins/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh

# zsh-syntax-highlighting for OSX
source /usr/local/share/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh
