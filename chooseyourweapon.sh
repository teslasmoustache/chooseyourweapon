#!/bin/bash
#
# <Choose Your Weapon>
# Copyright (C) <2014> <Teslas Moustache>
# This program is free software: you can redistribute it and/or modify
# it under the terms of the GNU General Public License as published by
# the Free Software Foundation, either version 3 of the License, or any later version.

# This program is distributed in the hope that it will be useful,
# but WITHOUT ANY WARRANTY; without even the implied warranty of
# MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE. See the
# GNU General Public License for more details.

# You should have received a copy of the GNU General Public License
# along with this program. If not, see <http://www.gnu.org/licenses/>."

#================
#clear the screen
#================
clear

#================
#Greeting
#================

echo "A dice roller script for D-4, D-6, D-8, D-10, D-12, D-20, and D-100, as well as a coin tosser."
echo "Choose your weapon."

#================
#Functions
#================

function D-4 {
#generates a random number between 1 and 4.
NUMBER=$[ ( $RANDOM % 4 ) + 1 ]
#print out an ascii drawing of a 4-sided die
     echo "               ^"
     echo "              /|\ "
     echo "             /'|:\ "
     echo "            /''|::\ "
     echo "           /'''|:::\ "
     echo "          /''''|::::\ "
     echo "         /''''/,\::::\ "
     echo "        /'''/,,,,,\:::\ "
     echo "       /''/,,,,,,,,,\::\ "
     echo "      /'/,,,,,,,,,,,,,\:\ "
     echo "      /_________________\ "
     
     
     echo " You have chosen D4. And you have rolled a.... "
     echo $NUMBER

}

function D-6 {
#generates a random number between 1 and 6.
NUMBER=$[ ( $RANDOM % 6 ) + 1 ]
#prints out an ascii drawing of a 6-sided die
echo " _______     "
echo "| .   . |\   "
echo "|   .   |.\  "
echo "| .   . |.'| "
echo "|_______|.'| "
echo " \ ' .   \'| "
echo "  \____'__\| "
echo " You have chosen D6. And you have rolled a.... "
echo $NUMBER
}

function D-8 {
#generates a random number between 1 and 8.
NUMBER=$[ ( $RANDOM % 8 ) + 1 ]
echo " You have chosen D8. And you have rolled a.... "
echo $NUMBER
}

function D-10 {
#generates a random number between 1 and 10.
NUMBER=$[ ( $RANDOM % 10 ) + 1 ]
echo " You have chosen D10. And you have rolled a.... "
echo $NUMBER
}

function D-12 {
#generates a random number between 1 and 12.
NUMBER=$[ ( $RANDOM % 12 ) + 1 ]
echo " You have chosen D12. And you have rolled a.... "
echo $NUMBER
}

function D-20 {
#generates a random number between 1 and 20.
NUMBER=$[ ( $RANDOM % 20 ) + 1 ]
echo " You have chosen D20. And you have rolled a.... "
echo $NUMBER
}

function D-100 {
#generates a random number between 1 and 100.
NUMBER=$[ ( $RANDOM % 100 )  + 1 ]
echo " You have chosen D100. And you have rolled a.... "
echo $NUMBER
}

function coin-toss {
#generates a random number between 1 and 2, and returns "1" as "heads" and "2" as "tails".
NUMBER=$[ ( $RANDOM % 2 ) + 1 ]
echo " You have tossed a coin. And it has landed on.... "
if [ $NUMBER -eq 1 ]
then
     echo "Heads"
else 
     echo "Tails"
fi
}

#==============
#user selection
#==============

select weapon in \
	"D-4" \
	"D-6" \
	"D-8" \
	"D-10" \
	"D-12" \
	"D-20" \
	"D-100" \
	"coin toss" \

#==============================================
#Functions to perform based on user's selection
#==============================================

do case $weapon in
	"D-4")
	D-4;
	;;
	"D-6")
	D-6;
	;;
	"D-8")
	D-8;
	;;
	"D-10")
	D-10;
	;;
	"D-12")
	D-12;
	;;
	"D-20")
	D-20;
	;;
	"D-100")
	D-100;
	;;
	"coin toss")
	coin-toss;
	;;
	*)
	esac
done
