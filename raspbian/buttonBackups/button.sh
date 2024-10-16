choice=$(zenity --question  --title="Recording" --text='ready... <big>SET... <big>Record?</big></big>'  --width=300 --height=200 --ok-label "GO!" --cancel-label "cancel")

if [ "$?" != 0 ]
then
    echo "quit"
    exit
else
    echo "scroll"
    /home/cc/scrollingSpectrogram/build/opengl_spectrogram &
    sleep 30
    pw-cat -r --target 71 /tmp/xxx.wav &
    wpctl set-volume 71 1.0
    /home/cc/f40xfce/muteButton.sh
    exit
fi
