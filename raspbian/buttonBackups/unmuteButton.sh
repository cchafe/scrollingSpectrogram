choice=$(zenity --question  --title="Recording" --text="Mute / Unmute" --ok-label "Unmute" --cancel-label "Quit Recording")

if [ "$?" != 0 ]
then
    echo "quit"
    killall pw-cat
    killall opengl_spectrogram
    /home/cc/f40xfce/button.sh &
    exit
else
    echo "unmute"
    wpctl set-volume 71 1.0
    /home/cc/f40xfce/muteButton.sh &
    exit
fi
