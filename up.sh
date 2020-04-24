while [ 1 ]; do
echo -n "\nDamage caused by the execution of this script is not responsible. Do you agree?\n\n이스크립트(마냐디펜스)를 실행하여 발생한 피해는 책입지지 않습니다. 동의 하십니까? (y/n) : "
read a
if [ x$a = "xy" ]
then
break
else
exit
fi
done

apt-get update;apt-get upgrade -y;apt-get install git -y;

# 업데이트 목록 갱신 및 업그레이드 가능한 모든 패키지 업그레이드, git을 설치합니다.


mkdir /etc/backup/;
cp /etc/sysctl.conf /etc/backup/;cp /etc/iptables/rules.v4 /etc/backup

# sysctl.conf (리눅스 커널 설정 파일), rules.v4 (iptables 설정 파일)을 /etc/backup 폴더에 백업합니다.
# 백업 폴더 위치 : /etc/backup/

git clone https://github.com/allequalit/defense.git;
mv defense /etc/;

# 마냐디펜스 소스코드 다운로드

cat /etc/defense/sysctl.conf >> /etc/sysctl.conf

# /etc/sysctl.conf/ (리눅스 커널 설정 파일)을 덮어씌웁니다. 백업파일은 /etc/backup  폴더에있습니다.
# 아이피주소 스푸핑 방지를 활성화합니다.

apt-get install iptables-persistent -y;

cp /usr/share/netfilter-persistent/plugins.d/15-ip4tables /etc/init.d/iptables;
/etc/init.d/iptables start;
/etc/init.d/iptables flush;
update-rc.d -f iptables defaults;

# 우분투 iptables 서비스 활성화
# insserv: warning: script ‘K01iptables’ missing LSB tags and overrides
# insserv: warning: script ‘iptables’ missing LSB tags and overrides
# 위와 같은 애러가 표시될 경우 게시글(https://idchowto.com/?p=31482)을 참조하여 문제를 해결해주세요.

cat /etc/defense/rules.v4 >> /etc/iptables/rules.v4;

# rules.v4 (iptables 설정 파일)에 내용을 추가합니다.
# 한국 아이피주소, 1.1.1.1 DNS, Google DNS, Open DNS, quad9 DNS, Comodo Secure DNS, AdGuard DNS, 내부망 아이피주소를 제외한 모든 아이피주소를 차단합니다.

reboot;

# 서버 재부팅
