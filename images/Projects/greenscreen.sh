ffmpeg -i "$1.avi" -vf "chromakey=0x00ff00:0.01:0.2,fps=15,scale=480:-1:flags=lanczos,split[s0][s1];[s0]palettegen[p];[s1][p]paletteuse" "$1.gif"
