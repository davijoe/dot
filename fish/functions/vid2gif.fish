function vid2gif
    set input $argv[1]
    set output $argv[2]
    set start $argv[3]
    set duration $argv[4]
    set speed $argv[5]

    if test -z "$speed"
        set speed 1
    end

    set pts (math "1 / $speed")

    ffmpeg -ss $start -t $duration -i $input \
        -vf "setpts=$pts*PTS,fps=15,scale=640:-1:flags=lanczos,split[s0][s1];[s0]palettegen[p];[s1][p]paletteuse" \
        -loop 0 $output
end
