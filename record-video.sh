function record() 
{
adb shell rm /sdcard/video.mp4
adb shell screenrecord /sdcard/video.mp4
}

function pull()
{
adb pull /sdcard/video.mp4 ~/Desktop/video.mp4
adb shell rm /sdcard/video.mp4
}

c=$1
if [ "$c" == "r" ]; then
    record
elif [ "$c" == "p" ]; then
    pull
else
    echo "Use parameters:"
    echo "	r - to start record (ctrl+c to stop record)"
    echo "	p - to pull video to Desctop folder"
fi
