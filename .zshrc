fortune | cowsay -f tux
echo ""
# Enable Powerlevel10k instant prompt. Should stay close to the top of ~/.zshrc.
# Initialization code that may require console input (password prompts, [y/n]
# confirmations, etc.) must go above this block; everything else may go below.
if [[ -r "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh" ]]; then
  source "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh"
fi

# If you come from bash you might have to change your $PATH.
# export PATH=$HOME/bin:$HOME/.local/bin:/usr/local/bin:$PATH

export ZSH="$HOME/.oh-my-zsh"

ZSH_THEME="powerlevel10k/powerlevel10k"

zstyle ':omz:update' frequency 10

# Uncomment the following line if pasting URLs and other text is messed up.
# DISABLE_MAGIC_FUNCTIONS="true"

# Uncomment the following line to enable command auto-correction.
# ENABLE_CORRECTION="true"

# Uncomment the following line to display red dots whilst waiting for completion.
# You can also set it to another string to have that shown instead of the default red dots.
# e.g. COMPLETION_WAITING_DOTS="%F{yellow}waiting...%f"
# Caution: this setting can cause issues with multiline prompts in zsh < 5.7.1 (see #5765)
# COMPLETION_WAITING_DOTS="true"

DISABLE_UNTRACKED_FILES_DIRTY="true"

plugins=(git zsh-syntax-highlighting zsh-autosuggestions)

source $ZSH/oh-my-zsh.sh

export EDITOR='nvim'

# Set personal aliases, overriding those provided by oh-my-zsh libs,
# plugins, and themes. Aliases can be placed here, though oh-my-zsh
# users are encouraged to define aliases within the ZSH_CUSTOM folder.

alias i3edit='$EDITOR ~/.config/i3/config'
alias connect-hd350='bluetoothctl connect 00:1B:66:EA:AC:99'
alias server='ssh guest@192.168.1.69'
alias clear-clipboard='pkill greenclip && greenclip clear && greenclip daemon &'
alias sddm-wallpaper='sudo nano /usr/share/sddm/themes/breeze/theme.conf.user'
alias histgrep='history | grep'
alias cls='clear; ls -a'
alias vim='nvim'
alias psgrep='ps -e | grep'
alias brightness='ddcutil setvcp 10'
alias startvnc='sudo systemctl start vncserver@:3'
alias journal='cd ~/syncthing/journal/2024/'
alias nap='openrgb --mode direct -c 000000; systemctl suspend'
alias swapcaps='setxkbmap -option && setxkbmap -option caps:none && setxkbmap -option caps:swapnone'
alias guitar='pactl load-module module-loopback latency_msec=1'

# To customize prompt, run `p10k configure` or edit ~/.p10k.zsh.
[[ ! -f ~/.p10k.zsh ]] || source ~/.p10k.zsh

# Import colorscheme from 'wal' asynchronously
# Not supported in the "fish" shell.
(cat ~/.cache/wal/sequences &)

# for CS50
export CC="clang"
export CFLAGS="-fsanitize=signed-integer-overflow -fsanitize=undefined -ggdb3 -O0 -std=c11 -Wall -Werror -Wextra -Wno-sign-compare -Wno-unused-parameter -Wno-unused-variable -Wshadow"
export LDLIBS="-lcrypt -lcs50 -lm"

# fixes Satisfactory Mod Manager
export WEBKIT_DISABLE_DMABUF_RENDERER=1

# miniconda
[ -f /opt/miniconda3/etc/profile.d/conda.sh ] && source /opt/miniconda3/etc/profile.d/conda.sh
export CRYPTOGRAPHY_OPENSSL_NO_LEGACY=1

export PATH=$PATH:/home/drew/.spicetify

export MANPAGER='nvim +Man!'
