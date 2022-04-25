#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

alias ls='ls --color=auto'
PS1='[\u@\h \W]\$ '

# Import colorscheme from 'wal' asynchronously
# &   # Run the process in the background.
# ( ) # Hide shell job control messages.
# Not supported in the "fish" shell.
(cat ~/.cache/wal/sequences &)

# Alternative (blocks terminal for 0-3ms)
cat ~/.cache/wal/sequences

# To add support for TTYs this line can be optionally added.
source ~/.cache/wal/colors-tty.sh

#launches pfetch\neofetch on every new terminal opened
#neofetch
pfetch

#makes midnight commander use nano for editor
export EDITOR=nano

#this should call the command to fix the displays on my desktop
desktop () {
    ~/scripts/desktopDisplays.sh
    # or:
    #cd /path/to/your
    #./path
}

#This is to show the location fo the temps for CPU for polybar does not work
cpu () {
	~/scripts/CPUtemps.sh
	#./scripts/temp.sh
	#cd ~/scripts/
	#./CPUtemps.sh
	#cd ~/
}

pipes () {
	~/scripts/pipes.sh
}

clock () {
	~/scripts/clock.sh
}

config () {
	~/scripts/config.sh
}

clean () {
	~/scripts/clean.sh
}
