#!/usr/bin/env bash
#
# <Choose Your Weapon version 0.0.2>
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
# Weapons
#================

declare -a weapons
declare -A art
declare -A results
declare -A messages

function art_for {
    [ "$1" = '__' ] && shift || weapons+=("$*")
    IFS='' read -r -d '' art["$*"]
}


art_for D-4 <<'EOF'
         ^
        /|\ 
       /'|:\ 
      /''|::\ 
     /'''|:::\ 
    /''''|::::\ 
   /''''/,\::::\ 
  /'''/,,,,,\:::\ 
 /''/,,,,,,,,,\::\ 
/'/,,,,,,,,,,,,,\:\ 
/_________________\ 
EOF


art_for D-6 <<'EOF'
 _______
| .   . |\  
|   .   |.\ 
| .   . |.'|
|_______|.'|
 \ ' .   \'|
  \____'__\|
EOF


art_for D-8 <<'EOF'
        ,/*\
      ,/::***\
    ,/::::*****\
  ,/::2:::***4***\
 /::::::::*********\
<------------------->
 \;` ` ` `;;;;;;;;,/
  `\;`8' `;;;6;;,/
    `\;` `;;;;,/
      `\;`;;,/
        `\,/
EOF


art_for D-10 <<'EOF'
      ,'.
    ,' | `.
  ,'   |   `.
,'_____|_____`.
\      ^      /
 \    / \    /
  \  /   \  /
   \/_____\/this is the worst D10 ever.
EOF


art_for D-12 <<'EOF'
     _,--"^"--._                                                     
   ,'\         /`.
 ,'   \_______/   `.
|     /       \     |
|    /         \    |
|  _/           \_  |
\'' `-.       ,-' ``/
 \     `-._,-'     /
  \       |       /
   `-.._  |  _,,-'
        ``"''
EOF


art_for D-20 <<'EOF'
        _=_
    .:'/   \':.
  ,' ,'     `. `.
 <  /         \  >
(--<----------->--)
|  / \       / \  |
| /   \     /   \ |
|/     \   /     \|
(_______\,/_______)
 `\      |     ,/'
   `\    |   ,/ 
     `\=_|_=/
         "
EOF


art_for D-100 <<'EOF'
You know a D100 is basically just a sphere. Quit complaining. I can feel you complaining.

        .d$#T!!!~"#*b.
      d$MM!!!!~~~     "h
    dRMMM!!!~           ^k
   $RMM!!~                ?
  $MMM!~                   "
 $MM!!                      9
4RM!!                        F
$!!!                         J
9!!~                         F
'k~~                        :
 3>                         F
  9>                       F
   "i                    :"
     t.                .P
       #c.          .z#
          ^#*heee*#"
EOF


art_for coin toss <<'EOF'

            _.-'~~`~~'-._
         .'`  L   A   C  `'.
        / S               K \
      /`       .-'~"-.       `\
     ;        / `-    \        ;
    ;        />  `.  -.|        ;
    |       /_     '-.__)       |
    |        |-  _.' \ |        |
    ;        `~~;     \\        ;
     ;IN"BOB"WE /      \\)P    ;
      \  TRUST '.___.-'`"     /
       `\                   /`
         '._   1 9 9 8   _.'
            `'-..,,,..-'`
EOF

messages[coin toss]="You have tossed a coin. And it has landed on...."

results[coin toss]="Heads Tails"


art_for __ chair <<'EOF'
      __ ______
     -- / ,,, /
       / ,,, /
   __ /     /
  -- <-----<
    //`.``` `.
__ //   \_____\
-- "    //   //
    __ //   //
    -- "    "
EOF

messages[chair]="You tossed a chair out of the window. And it landed..."

results[chair]="
'On all fours'
'On its back'
'On a passerby'
'On the moon'
'In Soviet Russia'
"
#================
# Logic
#================

seed="$(printf '%u' "${1:-$(od -An -w2 -N2 -tu2 /dev/urandom)}")" || exit $?
RANDOM=$seed

function roll {
    NUMBER=$(( ( $RANDOM % $1 ) + 1 ))
}

#================
# User Interface
#================

clear

echo "A dice roller script for D-4, D-6, D-8, D-10, D-12, D-20, and D-100, as well as a coin tosser."
echo "Seed: $seed"

PS3="Choose your weapon: "

select weapon in "${weapons[@]}"; do 
    [ -z "$weapon" ] && weapon='chair'

    clear

    echo "Seed: $seed"

    meh="${art[$weapon]}"
    [ -n "$meh" ] && echo "$meh"

    case "$weapon" in
        D-*)
            roll "${weapon:2}"

            echo "You have chosen $weapon. And you have rolled a...."
            echo $NUMBER
            ;;
        *)
            eval "r=( ${results[$weapon]} )"
            roll ${#r[@]}

            echo "${messages[$weapon]}"
            echo "${r[ $NUMBER - 1 ]}"
            ;;
    esac
done
