# util for nvidia/intel GPU
prime-offload;
# ru/eng keyboard layouts
setxkbmap -layout us,ru -option grp:alt_shift_toggle;
# dwm status
while true; do
    VOLUME=$( amixer sget Master | grep -e 'Front Left:' | \
        sed 's/[^\[]*\[\([0-9]\{1,3\}%\).*\(on\|off\).*/\2 \1/' | sed 's/off/M/' | sed 's/on //' )
    DT=$(date +"%F %R")
    BATT=$(acpi -b | sed 's/.*[charging|unknown], \([0-9]*\)%.*/\1/gi')
    STATUS=$(acpi -b | sed 's/.*: \([a-zA-Z]*\),.*/\1/gi')
    MEM=$(free -m | grep '^Mem' | awk '{print "used: " $3"MB"}')
    d_used=$(df -h | grep '/dev/nvme0n1p2' |awk '{print $3}')
    d_av=$(df -h | grep '/dev/nvme0n1p2' |awk '{print $4}')
    xsetroot -name "[ ${VOLUME} ][ ${DT} ][ ${STATUS} ${BATT}% ][ ${MEM} ][ ${d_used}/${d_av} ]"
    sleep 1s
done &
exec dwm
