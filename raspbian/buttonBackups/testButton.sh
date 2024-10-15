choice=$(zenity --question  --title="test" --text="Mute / Unmute" --ok-label "Mute" --cancel-label "Quit Recording")

if [ "$?" != 0 ]
then
    echo "no"
else
    echo "yes"
fi
