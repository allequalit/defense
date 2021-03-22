# 한국어 (Korean)

# 해외망 차단 프로그램
한번의 실행으로 한국 아이피주소, 1.1.1.1 DNS, Google DNS, Open DNS, quad9 DNS, Comodo Secure DNS, AdGuard DNS, 내부망 아이피주소를 제외한 모든 아이피주소를 차단을 반영구적으로 적용해주는 프로그램 입니다. <br><br>
프로그램은 오픈소스이며 비상업적, 상업적 용도로 사용가능하지만 재배포는 금지됩니다. <br><br>
실행 가능 운영체제 : Ubuntu 16.04 LTS 이상 <br><br>
우분투 운영체제 버전이 Ubuntu 16.04 LTS 이하인 경우 업그레이드를 진행 하신후 마냐디펜스를 실행해 주시기 바랍니다.
# 주의 사항
해외망차단프로그램 프로그램을 실행하면 sysctl.conf (리눅스 커널 설정 파일), rules.v4 (iptables 설정 파일)이 /etc/backup 폴더에 백업됩니다. <br><br>
<a href="https://wnw1005.tistory.com/26">프로그램 실행후 우분투 저장소를 카카오로 변경해주세요.</a><br><br>
이프로그램(해외망차단프로그램)을 실행하여 발생한 피해는 책입지지 않습니다. <br><br> 적용이 완료되면 시스템을 재부팅합니다. <br><br>
    오류가있을 경우 dpkg --configure -a 입력해주세요. <br><br>
# 실행하는 법 <br>
sudo wget https://defense.ael.kr/up.sh --no-check-certificate <br><br>
sudo sh up.sh <br><br> 



