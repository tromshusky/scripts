#!/bin/sh
#calculates the battery percentage x100 and then divides by 100 with awk, so it shows as decimal
echo $((10000 * $(cat /sys/class/power_supply/*battery/charge_now) / $(cat /sys/class/power_supply/*battery/charge_full))) | awk '{print $1 / 100 "%"}'
