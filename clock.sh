#!/bin/bash

black="\x1B[0;30;40m"
red="\x1B[0;37;41m"
green="\x1B[0;37;42m"
brown="\x1B[0;37;43m"
blue="\x1B[0;37;40m"
purple="\x1B[0;37;45m"
cyan="\x1B[0;37;46m"
lgrey="\x1B[0;37;47m"
dgrey="\x1B[1;37;40m"
lred="\x1B[1;37;41m"
lgreen="\x1B[1;37;42m"
yellow="\x1B[1;37;43m"
lblue="\x1B[1;37;44m"
lpurple="\x1B[1;37;45m"
lcyan="\x1B[1;37;46m"
white="\x1B[1;37;47m"
testing="\x1B[0;37;42m"

printf "\x1B[0;37;40m"
clear
# Remove the cursor.
tput civis
# Set up all _variables_ as is required.
TIME=`date "+%H:%M"`
char="0"
# The plot _variable_ "p".
p="Nothing to see here"
# The background colours.
bg="\x1B[0m"
# The foreground colours.
#fg="\x1B[0;37;42m"
fg=$yellow

# The initial character plotting points.
horiz=10
vert=9
# This function reads the time and stores it in "TIME".
clock()
{
	TIME=`date "+%H:%M:%S"`
	#printf "\x1B[2;32f$bg The time is $TIME.\n"
}
# This function is required to correctly print out the large characters.
plot()
{
	p="\x1B["$vert";"$horiz"f"
	vert=$[ ( $vert + 1 ) ]
}
# *********************************************************
# The eleven characters required for this DEMO are 0 to 9
# and the : colon character.
zero()
{
	plot
	printf "$p$bg $fg   $bg  "
	plot
	printf "$p$fg $bg   $fg $bg "
	plot
	printf "$p$fg $bg  $fg  $bg "
	plot
	printf "$p$fg $bg $fg $bg $fg $bg "
	plot
	printf "$p$fg  $bg  $fg $bg "
	plot
	printf "$p$fg $bg   $fg $bg "
	plot
	printf "$p$bg $fg   $bg  "
}
one()
{
	plot
	printf "$p$bg   $fg $bg  "
	plot
	printf "$p$bg  $fg  $bg  "
	plot
	printf "$p$bg   $fg $bg  "
	plot
	printf "$p$bg   $fg $bg  "
	plot
	printf "$p$bg   $fg $bg  "
	plot
	printf "$p$bg   $fg $bg  "
	plot
	printf "$p$bg  $fg   $bg "
}
two()
{
	plot
	printf "$p$bg $fg   $bg  "
	plot
	printf "$p$fg $bg   $fg $bg "
	plot
	printf "$p$bg    $fg $bg "
	plot
	printf "$p$bg $fg   $bg  "
	plot
	printf "$p$fg $bg     "
	plot
	printf "$p$fg $bg     "
	plot
	printf "$p$fg     $bg "
}
three()
{
	plot
	printf "$p$bg $fg   $bg  "
	plot
	printf "$p$fg $bg   $fg $bg "
	plot
	printf "$p$bg    $fg $bg "
	plot
	printf "$p$bg $fg   $bg  "
	plot
	printf "$p$bg    $fg $bg "
	plot
	printf "$p$fg $bg   $fg $bg "
	plot
	printf "$p$bg $fg   $bg  "
}
four()
{
	plot
	printf "$p$bg   $fg $bg  "
	plot
	printf "$p$bg  $fg  $bg  "
	plot
	printf "$p$bg $fg $bg $fg $bg  "
	plot
	printf "$p$fg $bg  $fg $bg  "
	plot
	printf "$p$fg     $bg "
	plot
	printf "$p$bg   $fg $bg "
	plot
	printf "$p$bg   $fg $bg "
}
five()
{
	plot
	printf "$p$fg     $bg "
	plot
	printf "$p$fg $bg     "
	plot
	printf "$p$fg $bg     "
	plot
	printf "$p$bg $fg   $bg  "
	plot
	printf "$p$bg    $fg $bg "
	plot
	printf "$p$fg $bg   $fg $bg "
	plot
	printf "$p$bg $fg   $bg  "
}
six()
{
	plot
	printf "$p$bg $fg   $bg  "
	plot
	printf "$p$fg $bg     "
	plot
	printf "$p$fg $bg     "
	plot
	printf "$p$fg    $bg  "
	plot
	printf "$p$fg $bg   $fg $bg "
	plot
	printf "$p$fg $bg   $fg $bg "
	plot
	printf "$p$bg $fg   $bg  "
}
seven()
{
	plot
	printf "$p$fg     $bg "
	plot
	printf "$p$bg    $fg $bg "
	plot
	printf "$p$bg   $fg $bg  "
	plot
	printf "$p$bg  $fg $bg   "
	plot
	printf "$p$bg $fg $bg    "
	plot
	printf "$p$fg $bg     "
	plot
	printf "$p$fg $bg     "
}
eight()
{
	plot
	printf "$p$bg $fg   $bg  "
	plot
	printf "$p$fg $bg   $fg $bg "
	plot
	printf "$p$fg $bg   $fg $bg "
	plot
	printf "$p$bg $fg   $bg  "
	plot
	printf "$p$fg $bg   $fg $bg "
	plot
	printf "$p$fg $bg   $fg $bg "
	plot
	printf "$p$bg $fg   $bg  "
}
nine()
{
	plot
	printf "$p$bg $fg   $bg  "
	plot
	printf "$p$fg $bg   $fg $bg "
	plot
	printf "$p$fg $bg   $fg $bg "
	plot
	printf "$p$bg $fg    $bg "
	plot
	printf "$p$bg    $fg $bg "
	plot
	printf "$p$bg    $fg $bg "
	plot
	printf "$p$bg $fg   $bg  "
}
colon()
{
	plot
	printf "$p$bg      "
	plot
	printf "$p$bg      "
	plot
	printf "$p$bg  $fg $bg   "
	plot
	printf "$p$bg      "
	plot
	printf "$p$bg  $fg $bg   "
	plot
	printf "$p$bg      "
	plot
	printf "$p$bg      "
}
# End of the character set.
# *********************************************************
# Print all of these characters first just to display them.
# This will last for 5 seconds only...
# Done longhand purely for fun...
horiz=10
vert=9
zero
horiz=16
vert=9
one
horiz=22
vert=9
two
horiz=28
vert=9
three
horiz=34
vert=9
four
horiz=40
vert=9
five
horiz=46
vert=9
six
horiz=52
vert=9
seven
horiz=58
vert=9
eight
horiz=64
vert=9
nine
horiz=70
vert=9
colon
# Now display the clock in the normal character size...
clock
sleep 1
# Now clear the screen and display the big digits.
clear
while true
do
	clock

# Seconds	for subscript in $( seq 0 1 7)
	for subscript in $( seq 0 1 4)

	do
		# Take each character in turn and do the plots of them.
		char="${TIME:${subscript}:1}"
		horiz=$[ ( 1 + ( $subscript * 6 ) ) ]
		vert=1
		if [ "$char" == ":" ]
		then
			colon
		fi
		if [ "$char" == "0" ]
		then
			zero
		fi
		if [ "$char" == "1" ]
		then
			one
		fi
		if [ "$char" == "2" ]
		then
			two
		fi
		if [ "$char" == "3" ]
		then
			three
		fi
		if [ "$char" == "4" ]
		then
			four
		fi
		if [ "$char" == "5" ]
		then
			five
		fi
		if [ "$char" == "6" ]
		then
			six
		fi
		if [ "$char" == "7" ]
		then
			seven
		fi
		if [ "$char" == "8" ]
		then
			eight
		fi
		if [ "$char" == "9" ]
		then
			nine
		fi
	done
	sleep 1
done
