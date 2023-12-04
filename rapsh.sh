#!/data/data/com.termux/files/usr/bin/bash

# rapsh_nfsmw v1.6_beta_(build login3 v2.4) copyright (c) 2019 - 2021, Luis Adha. <adharudin14@gmail>
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
source ./lib/libanimation.sh
source ./lib/libmain-rapsh.sh
source ./lib/librand-rapsh.sh

if [ $(tput cols) -lt 70 ] || [ $(tput lines) -lt 13 ]; then
  echo "`basename $0` needs a 70-cols X 13-lines terminal."
  echo "Your terminal is $(tput cols)-cols X $(tput lines)-lines."
   exit 1
fi
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
${word[22]} ${word[19]}: 0-10
${word[22]} ${word[18]}: 1-99
${word[1]}: $(generateNonZeroLeading8Digit | thousands)
${word[6]} ${word[16]}: $(generateRandomIntegerBut5Digit| thousands)
${word[21]} EVADED: 1-999 
${word[20]}: 0 - 15 " > ./current_alias.data
}


function fun_main() {


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


              read EMPTY;;
        2)

          accessedMenu;
#            printf "coming soon! %$((${COLUMNS:-`tput cols`}-13))s\n" ''
            sleep $DELAY;;
            
        1)
            private_init_prompt_aliases;
            private_generate_dataForMenu;
            signin; clear;
            accessedMenu;;  
         *)
            echo "Invalid entry."
            sleep $DELAY;;
    esac
done
}

fun_main
