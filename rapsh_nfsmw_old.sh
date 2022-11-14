#!/system/bin/sh

# rapsh_nfsmw v1.0-alpha (build login3 v2.4) copyright (c) 2019, Luis <adharudin14@gmail>

# SIGN IN: CROSS
# PASSWORD: XXXXXXX


R='\x1b[1;31m'
G='\x1b[1;32m'
B='\x1b[1;34m'
Y='\x1b[1;33m'
C='\x1b[1;36m'
D='\x1b[0m'


casefiles='mw1885-Play';

SETMYCOLOR="\033[42;1;37m"
RPD="\t\t${G}ROCKPORT POLICE DEPARTEMENT${D}";
RPD2="ROCKPORT P.D."



dir=`pwd`;
version='v2.4';





function program() {


echo " "
echo "-----------------------------------------------------"
echo "\033[32m#####################################################\033[m";
echo "-----------------------------------------------------"
echo ${G}"
_____________________________________________________
|                         |                         |
|        RAP SHEET        |       $RPD2     |
|___________________________________________________|
|NAME:ADHAYA              |MAIN MENU:               |
|COST TO STATE: 1,785,550 |1) SUMMARY               |
|CARS IMPOUNDED: 0        |2) VEHICLE DATABASE      |
|CARS MONITORED: 7        |3) INFRACTIONS           |
|BOUNTY: 1,578,150        |4) COST TO STATE         |
|FINES DUE: 25,150        |5) TOP 5 PURSUITS        |
|PURSUITS EVADED: 24      |6) RANGKINGS             |
|BUSTED: 0                |0) EXIT                  |
|                         |                         |
|                         |                         |
|                         |                         |
|                         |                         |
|                         |                         |
|___________________________________________________|
\033[m 
Case File: \033[32m$casefiles\033[m
Version : \033[32m$version\033[m ";
echo "-----------------------------------------------------"
echo "\033[32m#####################################################\033[m";
echo "-----------------------------------------------------"


function Percent() {
    message="$1" 
    max=$2

    while true; do
        i=0

        while [ $i -le $max ]; do
            echo -ne "\r${G}${D}$message ${Y}$i${D} }\n"
            sleep 0.8

     
            
read main
      

case $main in
 1)
   echo "SUMMARY"
 ;;
 2)
   echo "VEHICLE DATABASE"
 ;;
 3)
   echo "INFRACTIONS"
 ;;
4)
  echo "CAST TO STATE"
 ;;
5)
  echo "TOP 5 PURSUITS"
 ;;
6)
  echo "RANGKINGS"
 ;;
 0)
     exit 0
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

Percent "SELECT A CATEGORY FOR MORE DETAIL:              {" 20;

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
            echo -ne ${G} "\r$message${G}$j"${D};
         sleep 0.5;
           
            if [ $i -eq 15 ]; then
               clear

               


layer0() {
echo -ne ${G}"  SEARCHING DATABASE -/\n"; sleep 1.5;
               echo -n "  RETRIEVING LIST -/ \n"; sleep 1.3;
 echo '....................................................'; sleep 1.2;
 echo

               echo '  >ALLAN, WES'; sleep 0.5;
               echo '  >CALLAHAN, CLARENCE'; sleep 0.5;
               echo '  >DOMINGO, HECTOR'; sleep 0.5;
               echo '  >MCCREA, RONALD'; sleep 0.5;
               echo '  >RUDIN, ADHA '; sleep 0.5;
               echo '  >SATO, TORU'; sleep 0.5;
               echo '  >VEGA, JOE'; sleep 0.5;
               echo ''; sleep 1.5;
}




layer1(){
echo ${G}"  SEARCHING DATABASE -/ ";
               echo -n "  RETRIEVING LIST -/ \n";
 echo '....................................................';
 echo

               
               echo "${SETMYCOLOR}  >ALLAN, WES                                       \033[0m" ${G}; 
 echo '  >CALLAHAN, CLARENCE';
               echo '  >DOMINGO, HECTOR';
               echo '  >MCCREA, RONALD';
               echo '  >RUDIN, ADHA';
               echo '  >SATO, TORU';
               echo '  >VEGA, JOE';
               echo '';
}



layer2() {

 
echo ${G}"  SEARCHING DATABASE -/ ";
               echo -n "  RETRIEVING LIST -/ \n";
 echo '....................................................';
 echo


               echo '  >ALLAN, WES';
               echo "${SETMYCOLOR}  >CALLAHAN, CLARENCE                               \033[0m" ${G};
               echo '  >DOMINGO, HECTOR';
               echo '  >MCCREA, RONALD';
               echo '  >RUDIN, ADHA';
               echo '  >SATO, TORU';
               echo '  >VEGA, JOE';
               echo '';
}

layer3() { 

echo ${G}"  SEARCHING DATABASE -/ ";
               echo -n "  RETRIEVING LIST -/ \n";
 echo '....................................................';
 echo

               echo '  >ALLAN, WES';
               echo '  >CALLAHAN, CLARENCE';
               echo "${SETMYCOLOR}  >DOMINGO, HECTOR                                  \033[0m" ${G};
               echo '  >MCCREA, RONALD';
               echo '  >RUDIN, ADHA';
               echo '  >SATO, TORU';
               echo '  >VEGA, JOE';
               echo '';
}

layer4() {

echo ${G}"  SEARCHING DATABASE -/ ";
               echo -n "  RETRIEVING LIST -/ \n";
 echo '....................................................';
 echo
               echo '  >ALLAN, WES';
               echo '  >CALLAHAN, CLARENCE';
               echo '  >DOMINGO, HECTOR';
               echo "${SETMYCOLOR}  >MCCREA, RONALD                                   \033[0m" ${G};
               echo '  >RUDIN, ADHA';
               echo '  >SATO, TORU';
               echo '  >VEGA, JOE';
               echo '';
}
                             
layer5() {

echo ${G}"  SEARCHING DATABASE -/ ";
               echo -n "  RETRIEVING LIST -/ \n";
 echo '....................................................';
 echo
               echo '  >ALLAN, WES';
               echo '  >CALLAHAN, CLARENCE';
               echo '  >DOMINGO, HECTOR';
               echo '  >MCCREA, RONALD';
               echo "${SETMYCOLOR}  >RUDIN, ADHA                                      \033[0m" ${G};
               echo '  >SATO, TORU';
               echo '  >VEGA, JOE';
               echo '';
               
}


layer6() {

echo ${G}"  SEARCHING DATABASE -/ ";
               echo -n "  RETRIEVING LIST -/ \n";
 echo '....................................................';
 echo



               echo '  >ALLAN, WES';
               echo '  >CALLAHAN, CLARENCE';
               echo '  >DOMINGO, HECTOR';
               echo '  >MCCREA, RONALD';
               echo '  >RUDIN, ADHA';
               echo "${SETMYCOLOR}  >SATO, TORU                                       \033[0m" ${G};
               echo '  >VEGA, JOE';
               echo '';
}

layer7() {

echo ${G}"  SEARCHING DATABASE -/ ";
               echo -n "  RETRIEVING LIST -/ \n";
 echo '....................................................';
 echo
               echo '  >ALLAN, WES';
               echo '  >CALLAHAN, CLARENCE';
               echo '  >DOMINGO, HECTOR';
               echo '  >MCCREA, RONALD';
               echo '  >RUDIN, ADHA';
               echo '  >SATO, TORU';
               echo "${SETMYCOLOR}  >VEGA, JOE                                        \033[0m" ${G};
               echo '';

}


layer0; sleep 0.3; clear

layer1; sleep 0.3; clear

layer2; sleep 0.3; clear

layer3; sleep 0.3; clear

layer4; sleep 0.3; clear

layer5; sleep 0.3; clear

layer6; sleep 0.3; clear

layer7; sleep 0.3; clear

layer6; sleep 0.3; clear

layer5; sleep 0.3;

               echo '  SELECTION MADE, RETRIEVING ALIAS...'; sleep 1.5
               echo '  LOADING OK... '; sleep 1.3;
 echo '....................................................'${D};

               
               
 sleep 1.7; clear;
              program;
            fi
  let i++
        done
    done
done
}




function pass() { 

echo ${G}"PASSWORD: " ${D}
read login

  case $login in
		XXXXXXX)
             Progress "\t\tSIGNING IN " 15
            
        ;;
        *)
             clear
             busybox clear
             echo $R"Password salah.."$D
             sleep 2
             cd $dir
             print
             sh $0
  esac

}

clear
echo $RPD
echo ${G}"SIGN IN: "${D}
read sign

       if [ ! "$sign" = CROSS ];
       then
                  cd $dir
                   sh $0
       else
            pass
       fi
