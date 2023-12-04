source ./lib/libcolor-rapsh.sh


function thousands() {
    sed -re ' :restart ; s/([0-9])([0-9]{3})($|[^0-9])/\1,\2\3/ ; t restart '
}
generateRandomIntegerBetween0And9() {
cat /dev/urandom | tr -dc '0-9' | fold -w 256 | head -n 1 | head --bytes 1
}
generateRandomIntegerBetween10And99() {
  cat /dev/urandom | tr -dc '0-9' | fold -w 256 | head -n 1 | sed -e 's/^0*//' | head --bytes 2
}

generateRandomIntegerBut3Digit() {
  cat /dev/urandom | tr -dc '0-9' | fold -w 256 | head -n 1 | sed -e 's/^0*//' | head --bytes 3
}

rand4=0

generateRandomIntegerBut5Digit() {

od -A n -t d -N 2 /dev/urandom |tr -d ' '
}

generateRandomIntegerBetween1And9() {
    head -c10 /dev/urandom | md5sum | tr -d [a-z] | tr -d 0 | cut -c1
}
generateNonZeroLeading6Digit() {
digits=6
num=""

  while [ ${#num} -lt $digits ]; do
rand=$(od -A n -t d -N 1 /dev/urandom |tr -d ' ')
digit=$((rand % 10))

if [ ${#num} -eq 0 ] && [ $digit -eq 0 ]; then
 continue
fi
num="${num}$digit"
 done

 echo $num
}
generateNonZeroLeading8Digit() {

  digits=8
  num=""


  while [ ${#num} -lt $digits ]; do
    rand=$(od -A n -t d -N 1 /dev/urandom | tr -d ' ')
    digit=$((rand % 10))

    # Hindari angka nol di awal
    if [ ${#num} -eq 0 ] && [ $digit -eq 0 ]; then
      continue
    fi

    num="${num}$digit"
  done

  echo $num
}


function rand8()
{
digits=8

rand=$(od -A n -t d -N 2 /dev/urandom |tr -d ' ')
num=$((rand % 10))
while [ ${#num} -lt $digits ]; do
  rand=$(od -A n -t d -N 1 /dev/urandom |tr -d ' ')
  num="${num}$((rand % 10))"
done
echo $num
}

rand9=$(tr -cd "[:digit:]" < /dev/urandom | head -c 9)
#rand10 == Outputs a 10-digit random number
rand10=`head -c4 /dev/urandom | od -N4 -tu4 | sed -ne '1s/.* //p'`;

casefiles='\e[3;m\rmw1885-Play';

t_evaded=
t_busted=
bounty=
f_due=
r_database= 
p_database= 
profile=
f_paid=
s_infractions=
u_infractions=
cts=
ci=
cmi=


