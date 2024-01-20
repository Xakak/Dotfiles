#!bin/sh

dayanddate () {
	LC_TIME="en_US.UTF-8" date '+%G. %B. %e, %A'
}

vol () {
	bash /home/rayan/statusbar/volume.sh
}

battery () {
	bash /home/rayan/statusbar/battery.sh
}

wifi () {
	bash /home/rayan/statusbar/wifi.sh
}

timedate () {
	date '+%I:%M%p'
}

riyal () {
	cd currencyConvertor/; ./currencyConvertor sar pkr
}

while	xsetroot -name "$(riyal)"" $(dayanddate)"";""    $(battery)""    $(wifi)"" $(timedate)"
do
    sleep 1
done
