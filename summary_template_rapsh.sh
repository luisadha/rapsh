. ./lib/libcolor-rapsh.sh

echo
_Columns="$(echo -e "$COLUMNS - 10" | bc )"
echo -e ${On_IGreen}${BIBlack}  "  SUMMARY$(printf %"$_Columns"s |tr " " " ")$Color_Off";
echo -e "${BWhite}   NAME: ${BGreen}$(cat ./current_alias.data | awk '{print $2}' | head -n 1) "${Color_Off}
echo -e "${BWhite}   BOUNTY: ${BGreen}$(cat ./current_alias.data | awk '{print $2}' | head -n5 | tail -n1) "${Color_Off}
echo -e "${BGreen}   COST TO STATE: $(cat ./current_alias.data | awk '{print $4}' | head -n2 | tail -n1) "${Color_Off}
echo -e "${BGreen}   CARS IMPOUNDED: $(cat ./current_alias.data | awk '{print $3}' | head -n3 | tail -n1) "${Color_Off}
echo -e ${BIGreen}"$(printf %"$COLUMNS"s |tr " " "-") ";
HINT="minor code infractions: perform routine check for citations and infractions if encountered."
echo -e ${BIGreen}"  ${HINT^^}"
echo "";
echo -e ${BIGreen}"$(printf %"$COLUMNS"s |tr " " "-") ";
echo -e "${BWhite}   INFRACTIONS "${Color_Off}
echo -e "${BGreen}   UNSERVED: "${Color_Off}
echo -e "${BGreen}   SERVED: "${Color_Off}
echo
echo -e "${BWhite}   FINES"${Color_Off}
echo -e "${BGreen}   FINES PAID: "${Color_Off}
echo
echo -e "${BWhite}   PURSUITS"${Color_Off}
echo -e "${BGreen}   TIMES EVADED: "${Color_Off}
echo -e "${BGreen}   TIMES BUSTED: "${Color_Off}
echo
echo -e "${BWhite}   POLICE VEHICLES"${Color_Off}
echo -e "${BGreen}   DAMAGE: "${Color_Off}
echo -e "${BGreen}   IMMOBILIZED: "${Color_Off}
echo
echo -e ${BIGreen}"$(printf %"$COLUMNS"s |tr " " "-") "${Color_Off};
 
