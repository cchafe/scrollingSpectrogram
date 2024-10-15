choice=$(zenity --question  --title="Recording" --text="Mute / Unmute" --ok-label "Mute" --cancel-label "Quit Recording")

if [ "$?" != 0 ]
then
    echo "quit"
    killall pw-cat
#    killall opengl_spectrogram
    /home/cc/f40xfce/button.sh &
    exit
else
    echo "mute"
    wpctl set-volume 71 0.001
    /home/cc/f40xfce/unmuteButton.sh &
    exit
fi
