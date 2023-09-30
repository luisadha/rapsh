source ~/rapsh/lib/libcolor-rapsh.sh
source ~/rapsh/lib/libmain-rapsh.sh
source ~/rapsh/lib/librand-rapsh.sh

searchMostWantedAnimationStart() {


echo -e "  SEARCHING DATABASE -/"; sleep ${DELAY[3]};
echo -e "  RETRIEVING LIST -/"; sleep ${DELAY[2]};
printf %"$COLUMNS"s |tr " " ".";
echo


               echo -e "  >ALLAN, WES"; sleep ${DELAY[1]};
               echo -e "  >CALLAHAN, CLARENCE"; sleep ${DELAY[1]};
               echo -e "  >DOMINGO, HECTOR"; sleep ${DELAY[1]};
               echo -e "  >MCCREA, RONALD"; sleep ${DELAY[1]};
               echo -e "  >${LASTNAME}, ${NAME}"; sleep ${DELAY[1]};
               echo -e "  >SATO, TORU"; sleep ${DELAY[1]};
               echo -e "  >VEGA, JOE"; sleep ${DELAY[1]};
               echo ''; sleep ${DELAY[3]};
}


function searchMostWantedAnimationEnd() {
               echo -e '  SELECTION MADE, RETRIEVING ALIAS...';
               sleep ${DELAY[3]};
               echo -e '  LOADING OK... '; sleep ${DELAY[2]};
 printf %"$COLUMNS"s |tr " " "."; sleep 1.2;
 sleep ${DELAY[4]}; 
}

searchMostWantedAnimation1(){
echo -e "  SEARCHING DATABASE -/" $Color_Off
echo -e "  RETRIEVING LIST -/" $Color_Off
printf %"$COLUMNS"s | tr " " "." 
echo

local _webster="$(echo -e "$COLUMNS - 14" | bc )"
               echo -e "${SETMYCOLOR}  >ALLAN, WES$(printf %"$_webster"s |tr " " " ")" $Color_Off
               echo -e "  >CALLAHAN, CLARENCE" $Color_Off
               echo -e "  >DOMINGO, HECTOR" $Color_Off
               echo -e "  >MCCREA, RONALD" $Color_Off
               echo -e "  >${LASTNAME}, ${NAME}" $Color_Off
               echo -e "  >SATO, TORU" $Color_Off
               echo -e "  >VEGA, JOE" $Color_Off
               echo '';
}


searchMostWantedAnimation2() {
echo -e "  SEARCHING DATABASE -/" $Color_Off
echo -e "  RETRIEVING LIST -/" $Color_Off
printf %"$COLUMNS"s | tr " " "." 
echo

local _razor="$(echo -e "$COLUMNS - 22" | bc)"

               echo -e "  >ALLAN, WES" $Color_Off
               echo -e "${SETMYCOLOR}  >CALLAHAN, CLARENCE$(printf %"$_razor"s | tr " " " ")" $Color_Off
               echo -e "  >DOMINGO, HECTOR" $Color_Off
               echo -e "  >MCCREA, RONALD" $Color_Off
               echo -e "  >${LASTNAME}, ${NAME}" $Color_Off
               echo -e "  >SATO, TORU" $Color_Off
               echo -e "  >VEGA, JOE" $Color_Off
               echo '';
}

searchMostWantedAnimation3() {
echo -e "  SEARCHING DATABASE -/" $Color_Off
echo -e "  RETRIEVING LIST -/" $Color_Off
printf %"$COLUMNS"s |tr " " "." 
echo

local _ming="$(echo -e "$COLUMNS - 19" | bc)"

               echo -e "  >ALLAN, WES" $Color_Off
               echo -e "  >CALLAHAN, CLARENCE" $Color_Off
               echo -e "${SETMYCOLOR}  >DOMINGO, HECTOR$(printf %"$_ming"s |tr " " " ")" ${Color_Off}
               echo -e "  >MCCREA, RONALD" ${Color_Off}
               echo -e "  >${LASTNAME}, ${NAME}" $Color_Off
               echo -e "  >SATO, TORU" $Color_Off
               echo -e "  >VEGA, JOE" $Color_Off
               echo '';
}

searchMostWantedAnimation4() {
echo -e "  SEARCHING DATABASE -/" $Color_Off
echo -e "  RETRIEVING LIST -/" $Color_Off
printf %"$COLUMNS"s |tr " " "." 
echo

local _ronnie="$(echo -e "$COLUMNS - 18" | bc)"
               echo -e "  >ALLAN, WES" $Color_Off
               echo -e "  >CALLAHAN, CLARENCE" $Color_Off
               echo -e "  >DOMINGO, HECTOR" $Color_Off
               echo -e "${SETMYCOLOR}  >MCCREA, RONALD$(printf %"$_ronnie"s |tr " " " ")" $Color_Off
               echo -e "  >${LASTNAME}, ${NAME}" $Color_Off
               echo -e "  >SATO, TORU" $Color_Off
               echo -e "  >VEGA, JOE" $Color_Off
               echo '';
}

searchMostWantedAnimation5() {
echo -e "  SEARCHING DATABASE -/" $Color_Off
echo -e "  RETRIEVING LIST -/" $Color_Off
printf %"$COLUMNS"s |tr " " "." 
echo

local _playerLenght="$(echo -e "   >${LASTNAME}, ${NAME}" | wc -L)"

local _player="$(echo -e "$COLUMNS - $_playerLenght" | bc)"
               echo -e "  >ALLAN, WES" $Color_Off
               echo -e "  >CALLAHAN, CLARENCE" $Color_Off
               echo -e "  >DOMINGO, HECTOR" $Color_Off
               echo -e "  >MCCREA, RONALD" $Color_Off
               echo -e "${SETMYCOLOR}  >${LASTNAME}, ${NAME}$(printf %"$_player"s |tr " " " ")" $Color_Off
               echo -e "  >SATO, TORU" $Color_Off
               echo -e "  >VEGA, JOE" $Color_Off
               echo '';

}


searchMostWantedAnimation6() {
echo -e "  SEARCHING DATABASE -/" $Color_Off
echo -e "  RETRIEVING LIST -/" $Color_Off
printf %"$COLUMNS"s |tr " " "."
echo

local _bull="$(echo -e "$COLUMNS - 14" | bc)"


               echo -e  "  >ALLAN, WES" $Color_Off
               echo -e  "  >CALLAHAN, CLARENCE" $Color_Off
               echo -e  "  >DOMINGO, HECTOR " $Color_Off
               echo -e  "  >MCCREA, RONALD" $Color_Off
               echo -e  "  >${LASTNAME}, ${NAME}" $Color_Off
               echo -e "$SETMYCOLOR  >SATO, TORU$(printf %"$_bull"s |tr " " " ")" $Color_Off
               echo -e "  >VEGA, JOE" $Color_Off
               echo '';
}

searchMostWantedAnimation7() {
echo -e "  SEARCHING DATABASE -/" $Color_Off
echo -e "  RETRIEVING LIST -/" $Color_Off
printf %"$COLUMNS"s |tr " " "." 
echo

local _jv="$(echo -e "$COLUMNS - 13" | bc )"
               echo -e "  >ALLAN, WES" $Color_Off
               echo -e "  >CALLAHAN, CLARENCE" $Color_Off
               echo -e "  >DOMINGO, HECTOR" $Color_Off
               echo -e "  >MCCREA, RONALD" $Color_Off
               echo -e "  >${LASTNAME}, ${NAME} " $Color_Off
               echo -e "  >SATO, TORU" $Color_Off
               echo -e "${SETMYCOLOR}  >VEGA, JOE$(printf %"$_jv"s |tr " " " ")" $Color_Off
               echo '';

}


afterSignInAnimation() {
searchMostWantedAnimationStart; sleep ${DELAY[0]}; clear;
searchMostWantedAnimation1; sleep ${DELAY[0]}; clear;
searchMostWantedAnimation2; sleep ${DELAY[0]}; clear;
searchMostWantedAnimation3; sleep ${DELAY[0]}; clear;
searchMostWantedAnimation4; sleep ${DELAY[0]}; clear;
searchMostWantedAnimation5; sleep ${DELAY[0]}; clear;
searchMostWantedAnimation6; sleep ${DELAY[0]}; clear;
searchMostWantedAnimation7; sleep ${DELAY[0]}; clear;
searchMostWantedAnimation6; sleep ${DELAY[0]}; clear;
searchMostWantedAnimation5; sleep 0.4; searchMostWantedAnimationEnd;
}

 signInAnimation() {
  MESSAGE_OPTIONAL="$1"
  max=$2

  # Menghitung posisi tengah layar
  cols=$(tput cols)
  middle=$((cols / 2))

  until false; do
    i=0
    
   # clear
    spinner=( '-/' '\-' '-/' '\-' )

    while [ $i -le $max ]; do
      for ANIMATION in "${spinner[@]}"; do
        echo -n -e "\r"  # Hapus baris sebelumnya
        tput sc
        tput cup 13 $middle  # Posisikan kursor ke tengah
        echo -n "${MESSAGE_OPTIONAL} ${ANIMATION}"
        sleep 0.5
        if [ $i -eq 15 ]; then
       
          tput rc
        
         # clear
         # afterSignInAnimation;
          #clear 
          #accessedMenu; 
          sleep 10000
          exit 1;
        fi
        let i++
      done
    done
  done
}
