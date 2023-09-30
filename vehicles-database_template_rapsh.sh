. ./lib/libcolor-rapsh.sh
. ./lib/librand-rapsh.sh

#: " WI="23"
# function
#spaces () {
#        for (( a=0; a<(( $2 - $1 )); a++ )); do echo -n " "; done
#}
# logic
#declare -a NUMBERS=("BOUNTY: $bounty" Two Three Four Five Six Seven)
#declare -a DAYS=("${word[5]} EVADED" Tue Wednesday Thursday Friday Sat Sun)
#for i in {0..6}
#do
#echo "    ${NUMBERS[$i]}$(spaces ${#NUMBERS[$i]} ${WI})${DAYS[$i]}"
#done "




# HEADING
echo
_Column_Database="$(echo -e "$COLUMNS - 19" | bc )"
echo -e ${On_IGreen}${BIBlack} "  VEHICLE DATABASE$(printf %"$_Column_Database"s |tr " " " ")$Color_Off";
echo -e ${BIWhite}"   ${word[0]}: $(cat ./current_alias.data | awk '{print $2}' | head -n 1)" # PUTIH
echo -e "   ${word[1]}: $(cat ./current_alias.data | awk '{print $2}' | head -n5 | tail -n1)"${Color_Off} # PUTIH
echo -e ${BIGreen}"   PREFERRED ${word[3]}: " #HIJAU
echo -e "   RECENT ${word[3]}: "${Color_Off} #HIJAU
echo -e ${BIGreen}"$(printf %"$COLUMNS"s |tr " " "-")";
 echo -e -n ${BIWhite}"   Lexus LS300 "${Color_Off}
echo -e ${BIGreen}"                   < SUSPECTED TO DRIVE >"
echo -e -n "   ${word[1]}:$bounty"
echo -e "               ${word[5]} EVADED: $t_evaded"
echo -e -n "   ${word[6]} DUE:$f_due"
echo -e "               ${word[5]} BUSTED: $t_busted"
echo -e "   UNSERVED ${word[7]}: "
echo -e ${BIGreen}"$(printf %"$COLUMNS"s |tr " " "-")"${Color_Off};
