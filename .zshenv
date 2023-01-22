# Set variables
export EDITOR=nvim
export TZ='Europe/London'
export PNPM_HOME="/home/ivand/.local/share/pnpm"

# Set aliases
alias config='/usr/bin/git --git-dir=$HOME/.cfg/ --work-tree=$HOME'
alias nv='nvim'

# Define functions

### --- FFMPEG FUNCTIONS --- ###
trim() {
	ffmpeg -i "$1" -ss "$2" -to "$3" -c:v copy -c:a copy "$4"
}

compress() {
	ffmpeg -i "$1" -vcodec libx265 -crf 28 "$2"
}

# https://stackoverflow.com/a/36324719
audio() {
	ffmpeg -i "$1" -q:a 0 -map a "$2"
}

### --- ISO FUNCTIONS --- ###
etch() {
	sudo dd if="$1" of="$2" bs=4M conv=fdatasync status=progress
}

### --- TORRENT FUNCTIONS --- ###

torrent() {
	transmission-cli $@ > /dev/null 2>&1 &
}

