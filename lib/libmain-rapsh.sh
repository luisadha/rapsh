source ./lib/libcolor-rapsh.sh
COLOR_BASED="\e[39m"
COLOR_DANGER="\e[91m"
COLOR_WARNING="\e[93m"
COLOR_SUCCESS="\e[92m"
COLOR_SKY="\e[34m"


function accessedMenu() {
  newLine;  _menu_theme_dangerline;
      drawHorizontalLines; newLine
  public_Footer
      drawHorizontalLines;
      
choose() {
    message="$1"
    max=$2

    while true; do
        i=0
        
        
        while [ $i -le $max ]; do
          
            echo -ne "$message$i}\r{"
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
    echo -e "{\"FIRSTNAME\": \"${NAME}\", \"LASTNAME\": \"${LASTNAME}\", \"ALIAS\": \"${ALIAS}\", \"COST TO STATE\":\"  \"$(randn 7 | housands)\", \"CARS IMPOUNDED\":\"  \"$(randn 1 | thousands )\", \"CARS MONITORED\":\"   \"$(randn 2 | thousands)\", \"BOUNTY\":\"   \"$(randn 8 | thousands )\", \"FINES DUE\": \"$(randn 6 | thousands)\", \"PERSUIT_EVADED\": \"$(randn 7 | thousands )\", \"BUSTED\": \"$(randn 2 | thousands )\"}" > $dir/"${ALIAS}_PROFILE-rapsh.js"

  sleep 2.0
    echo -e 'Save Successfull!'; ;;
    0)
      echo "$D"; exit 0 ;;
    *)
        echo -n "Invalid input!"
        sleep 2; clear;
         accessedMenu; ;;
    esac

     sleep 0.8
      if [ $i -eq 10 ]; then

                echo -ne "${C}
Limit has reached until next time :) ${D}\n"
                
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
                              
                              
                exit 1
            fi
                 let i++
        done
    done
}

choose "  } SELECT A CATEGORY FOR MORE DETAIL:   {" 10;

}

function signin() {
clear
public_Banner "$RPD"
echo -e "\n"
public_Banner "$e92"
public_Banner "      ┏━━━━━━━━━━━━━━━━━━━━━━━━━━━━┓"
public_Banner "                  ┃ $SV                  ┃"
public_Banner "                      ┗━━━━━━━━━━━━━━━━━━━━━━━━━━━━┛"
public_Banner "$e39"
 
#echo -e "\n"
  
  #12 cols
 #echo -e "                ${COLOR_SUCCESS}┏━━━━━━━━━━━━━━━━━━━━━━━━━━━━┓"
# echo -e "                ┃${COLOR_WARNING}  SIGN IN:${COLOR_SUCCESS}                  ┃"
 
 #echo -e "                ┗━━━━━━━━━━━━━━━━━━━━━━━━━━━━┛${COLOR_BASED}\n"
tput sc
tput cup 4 30

read sign
       if [ "$sign" = "CROSS" ];
       then  #lanjut
         
                   pass;
       else
         tput cup 4 30
            echo "Wrong Username";
            sleep 2.0  #kembali
            signin;
            #loncati animasi
            accessedMenu; #MODE DEVOLOPER
       fi
}

function pass() {
echo -e "\n"
public_Banner "$e92"
public_Banner "      ┏━━━━━━━━━━━━━━━━━━━━━━━━━━━━┓"
public_Banner "                  ┃ $PV                  ┃"
public_Banner "                      ┗━━━━━━━━━━━━━━━━━━━━━━━━━━━━┛"
public_Banner "$e39"

echo -e "\n"
#echo -e "\n"
 #echo -e "                ${COLOR_SUCCESS}┏━━━━━━━━━━━━━━━━━━━━━━━━━━━━┓"
  # echo -e "                ┃  ${COLOR_WARNING}PASSWORD: ${COLOR_SUCCESS}                ┃"
   #echo -e "                ┗━━━━━━━━━━━━━━━━━━━━━━━━━━━━┛${COLOR_BASED}\n"
  tput cup 9 30
read login
  case $login in
                XXXXXXX) #animasi

signInAnimation "SIGNING IN" 15
            exit 0;;
        *)
           tput cup 9 30
            echo "Wrong password"
            sleep 2
            signin;
        esac
}
