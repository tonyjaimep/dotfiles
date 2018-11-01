alias ..="cd .."
alias ...="cd ../.."
alias ....="cd ../../.."
alias .....="cd ../../../.."

alias install="sudo apt install"
alias update="sudo apt update"
alias uninstall="sudo apt remove"

alias eventour="cd ~/Code/Web/Eventour/; clear"
alias antonio="cd ~/Code/Web/antonio/; clear"
alias union="cd ~/Code/Web/Union/; clear"
alias boletos="cd ~/Code/Web/Boletos/; clear"
alias trivix="cd ~/Code/Web/Trivix/; clear"

alias graph="exec wine /home/anon/.wine/drive_c/Program\ Files\ \(x86\)/Graph/Graph.exe"
alias arduino="~/Downloads/arduino-1.8.5/arduino"

alias v="vim"

alias thanks="echo You\'re welcome"

function youtube
	mpv "https://www.youtube.com/watch?v=$argv[1]" --ytdl-format=bestvideo[height<=$argv[2]]+bestaudio
end

alias g++17="g++ -std=gnu++17"

set fish_color_cwd cyan
set fish_color_quote green
set fish_color_param blue

function fish_greeting
	fortune -as
end

set -gx PATH ~/.composer/vendor/bin/ $PATH
