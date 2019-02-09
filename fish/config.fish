# navigation
alias ..="cd .."
alias ...="cd ../.."
alias ....="cd ../../.."
alias .....="cd ../../../.."

# apt
alias install="sudo apt install"
alias update="sudo apt update"
alias uninstall="sudo apt remove"

# most used programs
alias v="vim"
alias e="emacs -nw"
alias g="git"
alias py3="python3.6m"
alias g++17="g++ -std=gnu++17"

# courtesy is key
alias thanks="echo You\'re welcome"

# play a youtube video in given resolution
function youtube
	mpv "https://www.youtube.com/watch?v=$argv[1]" --ytdl-format=bestvideo[height<=$argv[2]]+bestaudio
end

# start new laravel project
function new-laravel-project
	cd ~/Code/Web/;
	laravel new $argv[1];
	cd $argv[1];
	npm install;
end

# fish defaults
set fish_color_cwd brblack
set fish_color_quote green
set fish_color_param blue
set fish_vi_keybindings

# display a random phrase from "The art of war" when terminal is started.
function fish_greeting
	awk "/^[0-9]/" ~/Books/artofwar.txt | shuf -n 1
end

# add composer to path
set -gx PATH ~/.composer/vendor/bin/ $PATH
