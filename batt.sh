#!/bin/sh
#calculates the battery percentage x100 and then replaces one (the first) character with itself and a dot
echo $((10000 * $(cat /sys/class/power_supply/*battery/charge_now) / $(cat /sys/class/power_supply/*battery/charge_full)))% | sed 's|.|&.|'
