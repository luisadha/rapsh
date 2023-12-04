PREFIX='\e[3;m'
DELAY=("0.3" "0.5" "1.3" "1.5" "1.7")
RPD="R O C K P O R T  P O L I C E  D E P A R T E M E N T";
SETMYCOLOR="${On_IGreen}${BIBlack}"
THEME_DOT="."
RPD2="ROCKPORT P.D."
ITALIC='\e[3;m\r' 
SV="${e93}SIGIN IN:${e92}"
PV="${e93}PASSWORD:${e92}"
RAPSH_DIR="$HOME/rapsh/"
# Reset
Color_Off='\033[0m'       # Text Reset

e39="\e[39m"
e91="\e[91m"
e93="\e[93m"
e92="\e[92m"
e34="\e[34m"
# Regular Colors
Black='\033[0;30m'        # Black
Red='\033[0;31m'          # Red
Green='\033[0;32m'        # Green
Yellow='\033[0;33m'       # Yellow
Blue='\033[0;34m'         # Blue
Purple='\033[0;35m'       # Purple
Cyan='\033[0;36m'         # Cyan
White='\033[0;37m'        # White

# Bold
BBlack='\033[1;30m'       # Black
BRed='\033[1;31m'         # Red
BGreen='\033[1;32m'       # Green
BYellow='\033[1;33m'      # Yellow
BBlue='\033[1;34m'        # Blue
BPurple='\033[1;35m'      # Purple
BCyan='\033[1;36m'        # Cyan
BWhite='\033[1;37m'       # White

# Underline
UBlack='\033[4;30m'       # Black
URed='\033[4;31m'         # Red
UGreen='\033[4;32m'       # Green
UYellow='\033[4;33m'      # Yellow
UBlue='\033[4;34m'        # Blue
UPurple='\033[4;35m'      # Purple
UCyan='\033[4;36m'        # Cyan
UWhite='\033[4;37m'       # White

# Background
On_Black='\033[40m'       # Black
On_Red='\033[41m'         # Red
On_Green='\033[42m'       # Green
On_Yellow='\033[43m'      # Yellow
On_Blue='\033[44m'        # Blue
On_Purple='\033[45m'      # Purple
On_Cyan='\033[46m'        # Cyan
On_White='\033[47m'       # White

# High Intensity
IBlack='\033[0;90m'       # Black
IRed='\033[0;91m'         # Red
IGreen='\033[0;92m'       # Green
IYellow='\033[0;93m'      # Yellow
IBlue='\033[0;94m'        # Blue
IPurple='\033[0;95m'      # Purple
ICyan='\033[0;96m'        # Cyan
IWhite='\033[0;97m'       # White

# Bold High Intensity
BIBlack='\033[1;90m'      # Black
BIRed='\033[1;91m'        # Red
BIGreen='\033[1;92m'      # Green
BIYellow='\033[1;93m'     # Yellow
BIBlue='\033[1;94m'       # Blue
BIPurple='\033[1;95m'     # Purple
BICyan='\033[1;96m'       # Cyan
BIWhite='\033[1;97m'      # White

# High Intensity backgrounds
On_IBlack='\033[0;100m'   # Black
On_IRed='\033[0;101m'     # Red
On_IGreen='\033[0;102m'   # Green
On_IYellow='\033[0;103m'  # Yellow
On_IBlue='\033[0;104m'    # Blue
On_IPurple='\033[0;105m'  # Purple
On_ICyan='\033[0;106m'    # Cyan
On_IWhite='\033[0;107m'   # White

declare word=(
"NAME" "BOUNTY" "VEHICLE" "DATABASE" "ID" "TIMES" "FINES" "INFRACTIONS" "QTY" "CATEGORY" "COST TO STATE" "DAMAGE" "POLICE" "DEPLOYED" "PROFILE" "IMMOBILIZED" "DUE" "PAID" "MONITORED" "IMPOUNDED" "BUSTED" "PURSUITS" "CARS"
)
function drawHorizontalLines() {
  printf %"$COLUMNS"s | tr " " "-"
}
function getAsciiPoliceLogos() {
  jp2a --colors --size=50x20 ./img/shield.png
}

function newLine() {
  echo ''
}

function public_Banner() {
 local  wellcome_str="${*}"
draw() {                                          
 local  terminal_width=$(tput cols)
 local  text_length=${#wellcome_str}

 local  padding_length=$((($terminal_width - $text_length - 4) / 2))

  echo -n -e "$(printf "%${padding_length}s")$wellcome_str$(printf "%${padding_length}s")"
}

local star=" "

local abc=$(echo "${star}$(draw)" | wc -L)
local cba=$((COLUMNS - abc))

echo -n -e "${star}$(draw)$(printf %"$cba"s "$star")"
}
function getAsciiShieldLogos() {
public_Banner ".....          ....." #1
public_Banner "........'.....'........'.....'........" #2
public_Banner ".'.........................................." #3
public_Banner ".........................................." #4
public_Banner "......................................" #5
public_Banner "......................................" #6
public_Banner "........................................" #7
public_Banner ".........................................." #8
public_Banner "............................................" #9
public_Banner ".............................................." #10
public_Banner "................................................" #11
public_Banner ".................................................." #12
public_Banner ".................................................." #13
public_Banner "................................................" #14
public_Banner ".............................................." #15
public_Banner ".........................................." #16
public_Banner "...................................." #17
public_Banner "........................" #18
public_Banner "......." #19
local quote="'"
public_Banner "$quote" #20
public_Banner " " #21
}

function public_Footer() {
 echo -e "1) SUMMARY\t2) VEHICLE DATABASE\t3) INFRACTIONS\t4) COST TO STATE\t5) TOP 5 PURSUITS\t6) RANGKINGS\t7) SAVE CURRENT STAT\t0) EXIT"; 

}
function public_Header() {
local arg="$2"
local wellcome_str="${arg:-"Wellcome to Need For Speed : RAPSHEET (emulated)"}"

  banner() {

  
  local terminal_width=$(tput cols)
  local text_length=${#wellcome_str}

  local padding_length=$((($terminal_width - $text_length - 4) / 2))

   echo -e "$(printf "%${padding_length}s")$wellcome_str$(printf "%${padding_length}s")"
}


 local _star="$1"
 local star="${_star:-"*"}"

 local abc=$(echo "${star}$(banner)" | wc -L)
 local cba=$((COLUMNS - abc))

     echo -e "${star}$(banner)$(printf %"$cba"s "$star")"
 }

 function public_Body() {
printf " Please select < %$((${COLUMNS:-`tput cols`}-17))s\n" ''
printf "  1. Create new alias %$((${COLUMNS:-`tput cols`}-22))s\n" ''
printf "  2. Add existing alias %$((${COLUMNS:-`tput cols`}-24))s\n" ''
printf "  3. Help %$((${COLUMNS:-`tput cols`}-10))s\n" ''
printf "  4. About %$((${COLUMNS:-`tput cols`}-11))s\n" ''
printf "  0. Quit game %$((${COLUMNS:-`tput cols`}-15))s\n" ''
printf " Enter selection [0-4] > %$((${COLUMNS:-`tput cols`}-25))s\n" ''
}

function _menu_theme_dot() {

newLine;                                                   #echo -e "
colm=$(python3 ./theme/dot_theme.py | column  -ts "+|=" -L | sed "s/ /${THEME_DOT}/g" | sed "s/=/-/g" | wc -L)
export COLUMNS=$colm
echo
newLine
python3 ./theme/dangerline_theme.py | column  -ts "+|" -L | sed "s/ /${THEME_DOT}/g" |sed "s/=/-/g" |sed "s/--//g" | sed "s/-//g"

newLine
}

function _menu_theme_dangerline() {
 python3 ./theme/dangerline_theme.py | column  -ts "" | sed "s/+/-/g" | sed "s/=/-/g" | sed "s/|/ /g"; }
