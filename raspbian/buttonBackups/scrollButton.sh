choice=$(zenity --question  --title="Recording" --text='1 <big>2 <big>3 </big></big>'  --width=300 --height=200 --ok-label "scroll" --cancel-label "cancel")

if [ "$?" != 0 ]
then
    echo "quit"
    exit
else
    echo "scroll"
    /home/cc/scrollingSpectrogram/build/opengl_spectrogram &
    pw-cat -r --target 71 /tmp/xxx.wav &
    ./muteButton.sh
    exit
fi
