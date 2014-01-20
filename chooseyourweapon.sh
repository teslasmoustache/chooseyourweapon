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
NUMBER=$[ ( $RANDOM % 4 ) + 1 ]
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
NUMBER=$[ ( $RANDOM % 6 ) + 1 ]
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
NUMBER=$[ ( $RANDOM % 8 ) + 1 ]
echo " You have chosen D8. And you have rolled a.... "
echo $NUMBER
}

function D-10 {
NUMBER=$[ ( $RANDOM % 10 ) + 1 ]
echo " You have chosen D10. And you have rolled a.... "
echo $NUMBER
}

function D-12 {
NUMBER=$[ ( $RANDOM % 12 ) + 1 ]
echo " You have chosen D12. And you have rolled a.... "
echo $NUMBER
}

function D-20 {
NUMBER=$[ ( $RANDOM % 20 ) + 1 ]
echo " You have chosen D20. And you have rolled a.... "
echo $NUMBER
}

function D-100 {
NUMBER=$[ ( $RANDOM % 100 )  + 1 ]
echo " You have chosen D100. And you have rolled a.... "
echo $NUMBER
}

function coin-toss {
NUMBER=$[ ( $RANDOM % 2 ) + 1 ]
echo " Feel like donating? 14ZcmYJCZKsUFDYfHdU7YEaAwkatLdBvVC             "
echo ""
echo "                  ,.=ctE55ttt553tzs.,                               "
echo "              ,,c5;z==!!::::  .::7:==it3>.,                         "
echo "           ,xC;z!::::::    ::::::::::::!=c33x,                      "
echo "         ,czz!:::::  ::;;..===:..:::   ::::!ct3.                    "
echo "       ,C;/.:: :  ;=c!:::::::::::::::..      !tt3.                  "
echo "      /z/.:   :;z!:::::J  :E3.  E:::::::..     !ct3.                "
echo "    ,E;F   ::;t::::::::J  :E3.  E::.     ::.     \ttL               "
echo "   ;E7.    :c::::F******   **.  *==c;..    ::     Jttk              "
echo "  .EJ.    ;::::::L                   '|:.   ::.    Jttl             "
echo "  [:.    :::::::::773.    JE773zs.     I:. ::::.    It3L            "
echo " ;:[     L:::::::::::L    |t::!::J     |::::::::    :Et3            "
echo " [:L    !::::::::::::L    |t::;z2F    .Et:::.:::.  ::[13            "
echo " E:.    !::::::::::::L               =Et::::::::!  ::|13            "
echo " E:.    (::::::::::::L    .......       \:::::::!  ::|i3            "
echo " [:L    !::::      ::L    |3t::::!3.     ]::::::.  ::[13            "
echo " !:(     .:::::    ::L    |t::::::3L     |:::::; ::::EE3            "
echo "  E3.    :::::::::;z5.    Jz;;;z=F.     :E:::::.::::II3[            "
echo "  Jt1.    :::::::[                    ;z5::::;.::::;3t3             "
echo "   \z1.::::::::::l......   ..   ;.=ct5::::::/.::::;Et3L             "
echo "    \t3.:::::::::::::::J  :E3.  Et::::::::;!:::::;5E3L              "
echo "     'cz\.:::::::::::::J   E3.  E:::::::z!     ;Zz37'               "
echo "       \z3.       ::;:::::::::::::::;=       ./355F                 "
echo "         \z3x.         ::~=======          ,c253F                   "
echo "           'tz3=.                      ..c5t32^                     "
echo "              '=zz3==...         ...=t3z13P^                        "
echo "                  '*=zjzczIIII3zzztE3>*^'                           "
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

do 
clear
case $weapon in
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
