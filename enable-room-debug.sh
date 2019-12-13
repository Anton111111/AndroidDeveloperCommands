function enableDebug() 
{
adb shell setprop log.tag.SQLiteStatements VERBOSE
}

function disableDebug() 
{
adb shell setprop log.tag.SQLiteStatements \"\"
}

function restart()
{
adb root
adb shell stop
adb shell start
}

c=$1
if [ "$c" == "e" ]; then
    enableDebug
    restart
elif [ "$c" == "d" ]; then
    disableDebug
    restart
else
    echo "Use parameters:"
    echo "	e - to enable db debug"
    echo "	d - to disable"
fi