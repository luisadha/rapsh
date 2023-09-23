#!/data/data/com.termux/files/usr/bin/bash

# rapsh_nfsmw v1.2_beta_(build login3 v2.4) copyright (c) 2019 - 2021, Luis Adha. <adharudin14@gmail>
# USE ONLY TERMINAL EMULATOR FROM JACK PALEVICH TO WORK OR TERMUX

# All Text, character names, places, police organization names are fictional from Need For Speed.

# SIGN IN: CROSS
# PASSWORD: XXXXXXX

#log:
# 705pm090122 new line fit to screen
# new feature export with js
# fix major bugs
# new algorithm
# - number with separate coma
# - export feature improvement
source ./lib/libcolor-rapsh.sh
source ./lib/librand-rapsh.sh

# Thanks ideone https://ideone.com/XIo0FC
function private_init_prompt_aliases() {
newLine;
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

}

function private_generate_dataForMenu() {
echo "${word[14]}: $ALIAS
${word[10]}: $(generateNonZeroLeading8Digit | thousands)
${word[22]} ${word[19]}: null
${word[22]} ${word[15]}: null
${word[1]}: $(generateNonZeroLeading8Digit | thousands)
${word[6]} ${word[16]}: $(generateNonZeroLeading6Digit | thousands)
${word[21]} EVADED: null
${word[20]}: null " > ~/rapsh/current_alias.data
}


function private_Main() {
while true; do
  clear
  newLine
  getAsciiShieldLogos
newLine; public_Header; newLine;
public_Body;

read REPLY
    case "$REPLY" in
        0)
            echo $D; exit 0;;
        4) 
                                         
clear
newLine; public_Header;
echo "About > "
echo -e "
.%%%%%....%%%%...%%%%%....%%%%...%%..%%.  •Name: RAPSH(.SH)
.%%..%%..%%..%%..%%..%%..%%......%%..%%.  (Rapsheet
.%%%%%...%%%%%%..%%%%%....%%%%...%%%%%%.  mini game on
.%%..%%..%%..%%..%%..........%%..%%..%%.  NFS  ™ : Most Wanted) 
.%%..%%..%%..%%..%%.......%%%%...%%..%%.  •Version: v1.0.3
........................................  •Decsriptions:
Rapsh is a CLI-based game inspired by the real minigames in Need For Speed. This game will give you a random score for your crimes."
printf "Written by Luis Adha a.k.a luisadha <adharudin14@gmail.com> %$((${COLUMNS:-`tput cols`}-60))s\n" ''
echo
printf "Press enter to continue %$((${COLUMNS:-`tput cols`}-24))s\n" ''

read EMPTY
             sleep $DELAY;;
        3)
         
clear
newLine; public_Header;
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
             private_init_prompt_aliases;
            private_generate_dataForMenu;

function program() {
  newLine;  _menu_theme_dangerline; newLine;
  public_Footer
    newLine;
      drawHorizontalLines;
  drawHorizontalLines;
Percent() {
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
   echo -e "SUMMARY"
   cd $(dirname $0)
   bash ./summary_template_rapsh.sh ;;
   2)
   echo -e "VEHICLE DATABASE"
   cd $(dirname $0)
   bash ./vehicles-database_rapsh_template.sh ;;
   3)
   echo -e "INFRACTIONS"
   echo "$nodata" ;;
   4)
   echo -e "CAST TO STATE"
   echo "$nodata" ;;
   5)
   echo -e "TOP 5 PURSUITS"
   echo "$nodata" ;;
   6)
   echo -e "RANGKINGS"
   echo "$nodata" ;;
   7)

     dir="`readlink -f $(pwd)`"
    echo -e "{\"FIRSTNAME\": \"${NAME}\", \"LASTNAME\": \"${LASTNAME}\", \"ALIAS\": \"${ALIAS}\", \"COST TO STATE\":\"   \"$(randn 7 | thousands)\", \"CARS IMPOUNDED\":\"  \"$(randn 1 | thousands )\", \"CARS MONITORED\":\"   \"$(randn 2 | thousands)\", \"BOUNTY\":\"   \"$(randn 8 | thousands )\", \"FINES DUE\": \"$(randn 6 | thousands)\", \"PERSUIT_EVADED\": \"$(randn 7 | thousands )\", \"BUSTED\": \"$(randn 2 | thousands )\"}" > $dir/"${ALIAS}_PROFILE-rapsh.js"

  sleep 2.0
    echo -e 'Save Successfull!'; ;;
    0)
      echo "$D"; exit 0 ;;
    $)
     clear; sleep 2; program;  ;;
    *)
       echo -n "Invalid input!"
        sleep 2
         program; ;;
    esac

     sleep 0.8
      if [ $i -eq 20 ]; then

                echo -ne "${C}
Limit has reached until next time :) ${D}\n"
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
                                  clear
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

Percent "SELECT A CATEGORY FOR MORE DETAIL:     {" 20;

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
      do # clear;
        echo -n -e "\r$message$j";
         sleep 0.5;
            if [ $i -eq 15 ]; then
               clear


layer0() {
echo -e ${PREFIX}"  SEARCHING DATABASE -/"; sleep 1.5;
echo -e ${PREFIX}"  RETRIEVING LIST -/"; sleep 1.3;
printf %"$COLUMNS"s |tr " " ".";
echo

               echo -e ${PREFIX} "  >ALLAN, WES"; sleep 0.5;
               echo -e ${PREFIX} "  >CALLAHAN, CLARENCE"; sleep 0.5;
               echo -e ${PREFIX} "  >DOMINGO, HECTOR"; sleep 0.5;
               echo -e ${PREFIX} "  >MCCREA, RONALD"; sleep 0.5;
               echo -e ${PREFIX} "  >${LASTNAME}, ${NAME}"; sleep 0.5;
               echo -e ${PREFIX} "  >SATO, TORU"; sleep 0.5;
               echo -e ${PREFIX} "  >VEGA, JOE"; sleep 0.5;
               echo ''; sleep 1.5;
}




layer1(){
echo -e ${PREFIX}"  SEARCHING DATABASE -/"; 
echo -e ${PREFIX}"  RETRIEVING LIST -/"; 
printf %"$COLUMNS"s |tr " " ".";
echo

             
               echo -e ${PREFIX} "${SETMYCOLOR}  >ALLAN, WES";
               echo -e ${PREFIX} "  >CALLAHAN, CLARENCE";
               echo -e ${PREFIX} "  >DOMINGO, HECTOR";
               echo -e ${PREFIX} "  >MCCREA, RONALD";
               echo -e ${PREFIX} "  >${LASTNAME}, ${NAME}";
               echo -e ${PREFIX} "  >SATO, TORU";
               echo -e ${PREFIX} "  >VEGA, JOE";
               echo '';
}



layer2() {
echo -e ${PREFIX}"  SEARCHING DATABASE -/"; 
echo -e ${PREFIX}"  RETRIEVING LIST -/"; 
printf %"$COLUMNS"s |tr " " ".";
echo

               echo -e ${PREFIX} "  >ALLAN, WES";
               echo -e "${SETMYCOLOR}  >CALLAHAN, CLARENCE";
               echo -e ${PREFIX} "  >DOMINGO, HECTOR";
               echo -e ${PREFIX} "  >MCCREA, RONALD";
               echo -e ${PREFIX} "  >${LASTNAME}, ${NAME}";
               echo -e ${PREFIX} "  >SATO, TORU";
               echo -e ${PREFIX} "  >VEGA, JOE";
               echo '';
}

layer3() { 
echo -e ${PREFIX}"  SEARCHING DATABASE -/";
echo -e ${PREFIX}"  RETRIEVING LIST -/"; 
printf %"$COLUMNS"s |tr " " ".";
echo

               echo -e ${PREFIX} "  >ALLAN, WES";
               echo -e ${PREFIX} "  >CALLAHAN, CLARENCE";
               echo -e "${SETMYCOLOR}  >DOMINGO, HECTOR ";
               echo -e ${PREFIX} "  >MCCREA, RONALD";
               echo -e ${PREFIX} "  >${LASTNAME}, ${NAME}";
               echo -e ${PREFIX} "  >SATO, TORU";
               echo -e ${PREFIX} "  >VEGA, JOE";
               echo '';
}

layer4() {
echo -e ${PREFIX}"  SEARCHING DATABASE -/";
echo -e ${PREFIX}"  RETRIEVING LIST -/";
printf %"$COLUMNS"s |tr " " ".";
echo
               echo -e ${PREFIX} "  >ALLAN, WES";
               echo -e ${PREFIX} "  >CALLAHAN, CLARENCE";
               echo -e ${PREFIX} "  >DOMINGO, HECTOR"; 
               echo -e "${SETMYCOLOR}  >MCCREA, RONALD ";
               echo -e ${PREFIX} "  >${LASTNAME}, ${NAME}";
               echo -e ${PREFIX} "  >SATO, TORU";
               echo -e ${PREFIX} "  >VEGA, JOE";
               echo '';
}
                             
layer5() {
echo -e ${PREFIX}"  SEARCHING DATABASE -/"; 
echo -e ${PREFIX}"  RETRIEVING LIST -/"; 
printf %"$COLUMNS"s |tr " " ".";
echo
               echo -e ${PREFIX} "  >ALLAN, WES";
               echo -e ${PREFIX} "  >CALLAHAN, CLARENCE";
               echo -e ${PREFIX} "  >DOMINGO, HECTOR";
               echo -e ${PREFIX} "  >MCCREA, RONALD";
               echo -e "${SETMYCOLOR}  >${LASTNAME}, ${NAME} ";
               echo -e ${PREFIX} "  >SATO, TORU";
               echo -e ${PREFIX} "  >VEGA, JOE";
               echo '';
               
}


layer6() {
echo -e ${PREFIX}"  SEARCHING DATABASE -/";
echo -e ${PREFIX}"  RETRIEVING LIST -/";
printf %"$COLUMNS"s |tr " " ".";
echo



               echo -e ${PREFIX} "  >ALLAN, WES";
               echo -e ${PREFIX} "  >CALLAHAN, CLARENCE";
               echo -e ${PREFIX} "  >DOMINGO, HECTOR ";
               echo -e ${PREFIX} "  >MCCREA, RONALD";
               echo -e ${PREFIX} "  >${LASTNAME}, ${NAME}";
               echo -e "$SETMYCOLOR  >SATO, TORU ";
               echo -e ${PREFIX} "  >VEGA, JOE";
               echo '';
}

layer7() {
echo -e ${PREFIX}"  SEARCHING DATABASE -/";
echo -e ${PREFIX}"  RETRIEVING LIST -/";
printf %"$COLUMNS"s |tr " " ".";
echo
               echo -e ${PREFIX} "  >ALLAN, WES";
               echo -e ${PREFIX} "  >CALLAHAN, CLARENCE";
               echo -e ${PREFIX} "  >DOMINGO, HECTOR";
               echo -e ${PREFIX} "  >MCCREA, RONALD";
               echo -e ${PREFIX} "  >${LASTNAME}, ${NAME} ";
               echo -e ${PREFIX} "  >SATO, TORU";
               echo -e "${SETMYCOLOR}  >VEGA, JOE ";
               echo '';

}
clear # 0.3
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
               echo -e '  SELECTION MADE, RETRIEVING ALIAS...'; sleep 1.5
               echo -e '  LOADING OK... '; sleep 1.3;
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
echo "PASSWORD: "
read login
  case $login in
		XXXXXXX) #animasi
             Progress "\t\tSIGNING IN " 15
            exit 0;;
        *)
            clear
            busybox clear
            echo "Wrong password.."
            sleep 2
            signin;
        esac
}
sleep 2.0
function signin() {
clear
public_Banner "$RPD"
echo "SIGN IN: "
read sign
       if [ "$sign" = "CROSS" ];
       then  #lanjut
           pass;
       else
            echo "Wrong Username";
            sleep 2.0  #kembali
        #    signin;
            #loncati animasi
            program; #MODE DEVOLOPER
       fi
}
   #  signin;;
   program;;
         *)
            echo "Invalid entry."
            sleep $DELAY;;
    esac
done
}

private_Main
