# util for nvidia/intel GPU
prime-offload;
# dwm status
while true; do
    VOLUME=$( amixer sget Master | grep -e 'Front Left:' | \
        sed 's/[^\[]*\[\([0-9]\{1,3\}%\).*\(on\|off\).*/\2 \1/' | sed 's/off/M/' | sed 's/on //' )
    DT=$(date +"%F %R")
    BATT=$(acpi | awk '{print $4}')
    STATUS=$(acpi | awk '{print $3}')
    MEM=$(free -m | grep '^Mem' | awk '{print "used: " $3"MB"}')
    MEM_ALL=$(free -m | grep '^Mem' | awk '{print $2"MB"}')
    DATA_USED=$(df -h | grep '/dev/nvme0n1p2' |awk '{print $3}')
    DATA_ALL=$(df -h | grep '/dev/nvme0n1p2' |awk '{print $2}')
    NET=$(vnstat -i wlan0 -tr 2 | grep rx | awk '{print "receive: " $2 " " $3}')
    xsetroot -name "[ ${VOLUME} ][ ${DT} ][ ${STATUS} ${BATT} ][ ${MEM}/${MEM_ALL} ][ ${DATA_USED}/${DATA_ALL} ][ ${NET} ]"
    sleep 2s
done &
# ru/eng keyboard layouts
setxkbmap -layout us,ru -option grp:alt_shift_toggle &
exec flameshot &
exec dwm
