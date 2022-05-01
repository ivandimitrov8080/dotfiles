trim() {
	ffmpeg -i $1 -ss $2 -to $3 -c:v copy -c:a copy $4
}

compress() {
	ffmpeg -i $1 -vcodec libx265 -crf 28 $2
}

