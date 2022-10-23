#!/system/bin/sh

# rapsh_nfsmw v1.0.1-alpha_ui/cli_version_(build login3 v2.4) copyright (c) 2019 - 2021, Luis Adha. <adharudin14@gmail>
# GUNAKAN HANYA TERMINAL EMULATOR DARI JACK PALEVICH AGAR BEKERJA
# Semua Teks, nama tokoh karakter, tempat, nama organsasi kepolisian adalah fiksi milik Need For Speed? 

# All Text, character names, places, police organization names are fictional from Need For Speed?

# SIGN IN: CROSS
# PASSWORD: XXXXXXX
# 705pm090122 new line paskan ke layar
# new feature export with js
# fix major bugs
# new algorithm



PREFIX='\e[3;m'
R='\x1b[1;31m'
G='\x1b[1;32m\e[K'
B='\x1b[1;34m'
Y='\x1b[1;33m'
C='\x1b[1;36m'
D='\x1b[0m'



function thousands() {
    sed -re ' :restart ; s/([0-9])([0-9]{3})($|[^0-9])/\1,\2\3/ ; t restart '
}


RANDOMM=$(date +%s%N | cut -b10-19 | sed -e 's/^0*//;s/^$/0/')

rand() {
  perl -E '$ARGV[0]||=""; $ARGV[0]=int($ARGV[0])||length($ARGV[0]); say join "", int(rand(9)+1)*($ARGV[0]?1:0), map { int(rand(10)) } (0..($ARGV[0]||0)-2)' $1
}

random() {
    min="$1"
    max="$2"
    
    range=$((max - min + 1))
    rand=$((min + (RANDOM % range)))
    echo "$rand"
}

function rando()
{
digits=10


num=$((rand % 10))
while [ ${#num} -lt $digits ]; do
  rand=$(od -A n -t d -N 1 /dev/urandom |tr -d ' ')
  num="${num}$((rand % 10))"
done
echo $num
}

randd=$(od -A n -t d -N 2 /dev/urandom |tr -d ' ')
rnd2=`head -c4 /dev/urandom| od -An -tu4`;

# rnd == Outputs a 10-digit random number
rnd=`head -c4 /dev/urandom | od -N4 -tu4 | sed -ne '1s/.* //p'`;

casefiles='\e[3;m\rmw1885-Play';
# SETMYCOLOR="\033[42;1;37m\e[K\e[0m"
# SETMYCOLOR="${G}\e[K\e[0m"
SETMYCOLOR="\e[3;m\r" #invert color
RPD="\t\tROCKPORT POLICE DEPARTEMENT";
RPD2="ROCKPORT P.D."
version='\e[3;m\rv1.0.2-alpha(UI/CLI Version)';




DELAY=1 # Number of seconds to display results

while true; do
clear
echo '*' "\t\tWellcome to Need For Speed? : RAPSHEET$PREFIX\t\t$D"'*'$PREFIX

printf " Please select < %$((${COLUMNS:-`tput cols`}-17))s\n" ''
printf "  1. Create new alias %$((${COLUMNS:-`tput cols`}-22))s\n" ''
printf "  2. Add existing alias %$((${COLUMNS:-`tput cols`}-24))s\n" ''
printf "  3. Help %$((${COLUMNS:-`tput cols`}-10))s\n" ''
printf "  4. About %$((${COLUMNS:-`tput cols`}-11))s\n" ''
printf "  0. Quit game %$((${COLUMNS:-`tput cols`}-15))s\n" ''


printf " Enter selection [0-4] > %$((${COLUMNS:-`tput cols`}-25))s\n" ''
read REPLY

    case "$REPLY" in
        0)
            echo $D; exit 0;;
        4) 
                                         
clear
echo '*' "\t\tWellcome to Need For Speed? : RAPSHEET$PREFIX\t\t$D"'*'$PREFIX
echo "About > "
echo "\e[3;m\r
                #             ##            
###  ## ###  ## ###     ##   #   ## ### # # rapsh(eet) - nfs?
#   # # # #  #  # # ### # # ###  #  ### ### fun random game
#   ### ### ##  # #     # #  #  ##  # # ### v1.0.1(alpha)"
#       # "      

printf "Written by Luis Adha a.k.a luisadha <adharudin14@gmail.com> %$((${COLUMNS:-`tput cols`}-60))s\n" ''
printf "Press enter to continue %$((${COLUMNS:-`tput cols`}-24))s\n" ''

read EMPTY
             sleep $DELAY;;
        3)
         
clear
echo '*' "\t\tWellcome to Need For Speed? : RAPSHEET$PREFIX\t\t$D"'*'$PREFIX
echo "Help > "
printf "Sign in: CROSS %$((${COLUMNS:-`tput cols`}-15))s\n" ''
printf "Password: XXXXXXX %$((${COLUMNS:-`tput cols`}-18))s\n" ''
printf "Press enter to continue %$((${COLUMNS:-`tput cols`}-24))s\n" ''

read EMPTY
            ;;
        2)
            printf "coming soon! %$((${COLUMNS:-`tput cols`}-13))s\n" ''
            sleep $DELAY;;
            
        1)


printf "[!] no filled, default value will be appear %$((${COLUMNS:-`tput cols`}-44))s\n" ''
printf "Input name for new aliases %$((${COLUMNS:-`tput cols`}-27))s\n" ''
read ALIAS
printf "Now, Input your first name to appear on animations: %$((${COLUMNS:-`tput cols`}-52))s\n" ''            
read NAME
printf "Last step!, Input your last name to appear on animations: %$((${COLUMNS:-`tput cols`}-58))s\n" ''
read LASTNAME
           
if [ "$LASTNAME" = '' ] && [ "$NAME" = '' ] && [ "$ALIAS" = '' ]; then
LASTNAME='RUDIN'
NAME='ADHA'
ALIAS="ADHAYA"
printf "Skipped! %$((${COLUMNS:-`tput cols`}-9))s\n" ''
else
printf "You filled some prompt! %$((${COLUMNS:-`tput cols`}-24))s\n" ''
 sleep 2.0
fi



function program() {


printf %"$COLUMNS"s |tr " " "_"
echo -e "\e[3;m\r\t\nRAP SHEET\t|\t$RPD2\t|\t$casefiles";
printf %"$COLUMNS"s |tr " " "_"
echo -e "\e[3;m\r
PROFILE: $ALIAS               
COST TO STATE: $(echo ${rnd} | thousands)
CARS IMPOUNDED: $randd
CARS MONITORED:   $(shuf -i 1000-100000 -n 1)         
BOUNTY: $(rand 6)         
FINES DUE: $RANDOMM               
PURSUITS EVADED: $(random 100 1000)  
BUSTED: $(rand 3)";
printf %"$COLUMNS"s |tr " " "_"
echo -e "MAIN MENU: "
echo -e "1) SUMMARY\t2) VEHICLE DATABASE\t3) INFRACTIONS\t4) COST TO STATE\t5) TOP 5 PURSUITS\t6) RANGKINGS\t0) EXIT";
printf %"$COLUMNS"s |tr " " "_"
printf %"$COLUMNS"s |tr " " "-"
printf %"$COLUMNS"s |tr " " "-"

function Percent() {
    message="$1" 
    max=$2

    while true; do
        i=0

        while [ $i -le $max ]; do
            echo -ne "\r$message $i }\n"
            sleep 0.8

     
            nodata="<tidak ada data>"
read main
      

case $main in
 1)
   echo "SUMMARY"
   echo "$nodata"
 ;;
 2)
   echo "VEHICLE DATABASE"
   echo "$nodata"
 ;;
 3)
   echo "INFRACTIONS"
   echo "$nodata"
 ;;
4)
  echo "CAST TO STATE"
  echo "$nodata"
 ;;
5)
  echo "TOP 5 PURSUITS"
  echo "$nodata"
 ;;
6)
  echo "RANGKINGS"
  echo "$nodata"
 ;;
7)
dir="`readlink -f $(pwd)`"
  echo -e "{\"FIRSTNAME\": \"${NAME}\", \"LASTNAME\": \"${LASTNAME}\", \"ALIAS\": \"${ALIAS}\", \"PERSUIT_EVADED\": \"$$\"}
" > $dir/"${ALIAS}_PROFILE-rapsh.js"
sleep 2.0
echo -e 'Save Successfull!';
 ;;
 0)
     echo "$D"; exit 0
 ;;
 $)
     clear; sleep 2; program; 
 ;;
*)
    echo -n "Invalid input!"
  sleep 2
   program;
;;
esac

     sleep 0.8
      if [ $i -eq 20 ]; then

                echo -ne "${C}
Batas limit tercapai, coba lain waktu see you :) ${D}\n"
                print
                  sleep 15
                    clear
                   echo -e '10';
                  sleep 0.5
               clear
           echo -e '9';
                sleep 0.5
             clear
        echo -e '8';
                  sleep 0.5
                clear
                   echo -e '7';
                  sleep 0.5
                    clear
                   echo -e '6';
                  sleep 0.5
                clear
                    echo -e '5';
                  sleep 0.5
                 clear
                echo -e '4';
                 sleep 0.5
                         clear
                    echo -e '3';
                         sleep 0.5
                       clear
                          echo -e '2';
                                 sleep 0.5
                                      clear
                                       echo -e '1';
                                    sleep 0.5
                                 busybox clear
                                       echo -e '0';
                                            sleep 0.5
                                                   clear
                                 clear
                                   clear -a exit      
                exit 1
            fi
                 let i++
        done
    done
}

Percent "\e[3;m\rSELECT A CATEGORY FOR MORE DETAIL:              {" 20;

}

function Progress() {

    message="$1" 
    max=$2


until false; do

      
i=0

echo ''
spinner=( '-/' '\-' '-/' '\-' );


 while [ $i -le $max ]; do

      for j in "${spinner[@]}"
      do

      # clear;
            echo -n -e "\e[3;m\r$message$j";
         sleep 0.5;
           
            if [ $i -eq 15 ]; then
               clear

               


layer0() {
echo ${PREFIX}"  SEARCHING DATABASE -/"; sleep 1.5;
echo ${PREFIX}"  RETRIEVING LIST -/"; sleep 1.3;
printf %"$COLUMNS"s |tr " " ".";
echo

               echo ${PREFIX} "  >ALLAN, WES"; sleep 0.5;
               echo ${PREFIX} "  >CALLAHAN, CLARENCE"; sleep 0.5;
               echo ${PREFIX} "  >DOMINGO, HECTOR"; sleep 0.5;
               echo ${PREFIX} "  >MCCREA, RONALD"; sleep 0.5;
               echo ${PREFIX} "  >${LASTNAME}, ${NAME}"; sleep 0.5;
               echo ${PREFIX} "  >SATO, TORU"; sleep 0.5;
               echo ${PREFIX} "  >VEGA, JOE"; sleep 0.5;
               echo ''; sleep 1.5;
}




layer1(){
echo ${PREFIX}"  SEARCHING DATABASE -/"; 
echo ${PREFIX}"  RETRIEVING LIST -/"; 
printf %"$COLUMNS"s |tr " " ".";
echo

             
               echo ${PREFIX} "${SETMYCOLOR}  >ALLAN, WES";
               echo ${PREFIX} "  >CALLAHAN, CLARENCE";
               echo ${PREFIX} "  >DOMINGO, HECTOR";
               echo ${PREFIX} "  >MCCREA, RONALD";
               echo ${PREFIX} "  >${LASTNAME}, ${NAME}";
               echo ${PREFIX} "  >SATO, TORU";
               echo ${PREFIX} "  >VEGA, JOE";
               echo '';
}



layer2() {
echo ${PREFIX}"  SEARCHING DATABASE -/"; 
echo ${PREFIX}"  RETRIEVING LIST -/"; 
printf %"$COLUMNS"s |tr " " ".";
echo

               echo ${PREFIX} "  >ALLAN, WES";
               echo "${SETMYCOLOR}  >CALLAHAN, CLARENCE";
               echo ${PREFIX} "  >DOMINGO, HECTOR";
               echo ${PREFIX} "  >MCCREA, RONALD";
               echo ${PREFIX} "  >${LASTNAME}, ${NAME}";
               echo ${PREFIX} "  >SATO, TORU";
               echo ${PREFIX} "  >VEGA, JOE";
               echo '';
}

layer3() { 
echo ${PREFIX}"  SEARCHING DATABASE -/";
echo ${PREFIX}"  RETRIEVING LIST -/"; 
printf %"$COLUMNS"s |tr " " ".";
echo

               echo ${PREFIX} "  >ALLAN, WES";
               echo ${PREFIX} "  >CALLAHAN, CLARENCE";
               echo "${SETMYCOLOR}  >DOMINGO, HECTOR ";
               echo ${PREFIX} "  >MCCREA, RONALD";
               echo ${PREFIX} "  >${LASTNAME}, ${NAME}";
               echo ${PREFIX} "  >SATO, TORU";
               echo ${PREFIX} "  >VEGA, JOE";
               echo '';
}

layer4() {
echo ${PREFIX}"  SEARCHING DATABASE -/";
echo ${PREFIX}"  RETRIEVING LIST -/";
printf %"$COLUMNS"s |tr " " ".";
echo
               echo ${PREFIX} "  >ALLAN, WES";
               echo ${PREFIX} "  >CALLAHAN, CLARENCE";
               echo ${PREFIX} "  >DOMINGO, HECTOR"; 
               echo "${SETMYCOLOR}  >MCCREA, RONALD ";
               echo ${PREFIX} "  >${LASTNAME}, ${NAME}";
               echo ${PREFIX} "  >SATO, TORU";
               echo ${PREFIX} "  >VEGA, JOE";
               echo '';
}
                             
layer5() {
echo ${PREFIX}"  SEARCHING DATABASE -/"; 
echo ${PREFIX}"  RETRIEVING LIST -/"; 
printf %"$COLUMNS"s |tr " " ".";
echo
               echo ${PREFIX} "  >ALLAN, WES";
               echo ${PREFIX} "  >CALLAHAN, CLARENCE";
               echo ${PREFIX} "  >DOMINGO, HECTOR";
               echo ${PREFIX} "  >MCCREA, RONALD";
               echo "${SETMYCOLOR}  >${LASTNAME}, ${NAME} ";
               echo ${PREFIX} "  >SATO, TORU";
               echo ${PREFIX} "  >VEGA, JOE";
               echo '';
               
}


layer6() {
echo ${PREFIX}"  SEARCHING DATABASE -/";
echo ${PREFIX}"  RETRIEVING LIST -/";
printf %"$COLUMNS"s |tr " " ".";
echo



               echo -e ${PREFIX} "  >ALLAN, WES";
               echo -e ${PREFIX} "  >CALLAHAN, CLARENCE";
               echo -e ${PREFIX} "  >DOMINGO, HECTOR ";
               echo -e ${PREFIX} "  >MCCREA, RONALD";
               echo -e ${PREFIX} "  >${LASTNAME}, ${NAME}";
               echo "$SETMYCOLOR  >SATO, TORU ";
               echo -e ${PREFIX} "  >VEGA, JOE";
               echo '';
}

layer7() {
echo ${PREFIX}"  SEARCHING DATABASE -/";
echo ${PREFIX}"  RETRIEVING LIST -/";
printf %"$COLUMNS"s |tr " " ".";
echo
               echo -e ${PREFIX} "  >ALLAN, WES";
               echo -e ${PREFIX} "  >CALLAHAN, CLARENCE";
               echo -e ${PREFIX} "  >DOMINGO, HECTOR";
               echo -e ${PREFIX} "  >MCCREA, RONALD";
               echo -e ${PREFIX} "  >${LASTNAME}, ${NAME} ";
               echo -e ${PREFIX} "  >SATO, TORU";
               echo "${SETMYCOLOR}  >VEGA, JOE ";
               echo '';

}

clear
# 0.3
layer0; sleep 0.3; clear

layer1; sleep 0.3; clear

layer2; sleep 0.3; clear

layer3; sleep 0.3; clear

layer4; sleep 0.3; clear

layer5; sleep 0.3; clear

layer6; sleep 0.3; clear

layer7; sleep 0.3; clear

layer6; sleep 0.3; clear

layer5; sleep 0.4;

               echo '  SELECTION MADE, RETRIEVING ALIAS...'; sleep 1.5
               echo '  LOADING OK... '; sleep 1.3;
 printf %"$COLUMNS"s |tr " " "."; sleep 1.2;
               
               
 sleep 1.7; clear;
              program;
            fi
  let i++
        done
    done
done
}




function pass() { 

echo "\e[3;m\rPASSWORD: "
read login

  case $login in
		XXXXXXX)
             #animasi
             Progress "\e[3;m\r\t\tSIGNING IN " 15
            exit 0
        ;;
        *)
             clear
             busybox clear
             echo "\e[3;m\rWrong password.."
             sleep 2
             signin;
  esac

}

sleep 2.0

function signin() {
clear
echo $RPD
echo "\e[3;m\rSIGN IN: "
read sign

       if [ "$sign" = "CROSS" ];
       then
                  #lanjut
                  pass;
       else
            echo "\e[3;m\rWrong Username";
            sleep 2.0
            #kembali
            signin;

            #loncati animasi
            program; #MODE DEVOLOPER
       fi
}
signin;

            ;;
         *)
            echo "\e[3;m\rInvalid entry."
            sleep $DELAY
            ;;

    esac
    
done
