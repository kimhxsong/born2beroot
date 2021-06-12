# EVAL

#42/born2beroot

## Project Overview

-   #### 가상머신이란 무엇인가?

    컴퓨팅 환경을 소프트웨어로 구현한 것 , 즉 컴퓨터를 에뮬레이션 하는 소프트웨어. 가상머신에서 운영체제나 응용 프로그램을 설치 및 실행할 수 있다.

-   #### 가상머신의 종류

    -   **시스템 가상머신**

        하드웨어 가상 머신이라고 하며 각 운영 체제를 실행하는 가상 머신의 기초가 되는 물리 컴퓨터를 다중화(multiplex)한다. 가상화를 제공하는 소프트웨어 계층은 가상 머신 모니터 또는 하이퍼바이저라고 한다.

        -   장점 
            1.  여러 운영 체제를 쓰는 작업 환경에서 운영 체제가 완벽히 고립된 채로 같은 컴퓨터에 존재할 수 있다.
            2.  가상 머신은 실제의 컴퓨터가 제공하는 것과 다른 형태의 명령어 집합 구조(ISA)를 제공한다.

        저만의 운영체제를 실행하는 여러 개의 가상 머신들을 <u>게스트 운영 체제</u>라고 하며, 다른 장치가 충돌을 피하기 위해 각 장치에서 실행하기 위한 서버 통합(server consolidation)에서 쓰이며, 각 가상 머신에서는 같은 물리 컴퓨터에서 실행된다. 이러한 사용을 제품 품질의 고립(QoS 고립)이라고 한다.

        

    -   **프로세스 가상머신**

        응용프로그램 가상 머신

        예) 자바 가상 머신(JVM), 공통 언어 런타임(CLR), 달빅(Dalvik)

        

-   #### 선택한 운영체제는 무엇인가

    -   **Debian** 	

    

-   #### 센토스와 데비안의 차이는 무엇인가?

    -   **CentOs**

        RedHat에서 개발한 운영체제. 

        RHEL에서 기술지원을 제외시킨 무료 소프트웨어.

        Fedora는 redhat 베타테스터

    -   **Debain**

        온라인 커뮤니티에서 제작 파생된 OS

        부족한 사후지원, 내장 유틸리티 성능이 비교적 낮고, 배포가 그려 레드햇에 밀렸으나 무료 개인 사용자 서버용으로 인기.

        지속적인 업데이트로 내장 유틸리티 성능 문제 다소 해결.

        넓은 유저층, 온라인 웹, 커뮤니티 자세히 기술되어 진입장벽이 낮다.

    -   **Ubuntu**

        영국의 캐노니털 회사에서 만든 배포한

        쉽고 편한 설치, 이용법으로 진입장벽을 낮췄다.

        개인 데스크톱에서 운영체제로 많이 사용하나, 서버용 리눅스 점유율로 볼 때 centOS에 밀리는 것은 사실

-   #### 가상머신의 목적은 무엇인가?

    -   하나의 컴퓨터로 동시에 서로 다른 2개 이상의 운영체제를 실행하고 싶을 때 (특히 호환되지 않는 프로그램을 원하는 경우)

    -   하나의 컴퓨터의 자원을 여러 명에게 나누어 주고 싶은데, 각 사용자 간의 상호 간섭을 없애고 싶을 때

    -   컴퓨터의 다른 부분에는 영향을 주지 않는 독립 환경을 만들고 싶을 때

        ​	a) 인터넷 뱅킹, 결제 등의 목적으로 각종 보안 프로그램 메인 데스크탑에 설치하기 싫을 때, 악성

        ​	b) 악성코드 분석 등을 할 때 실수로 컴퓨터 전체가 감염되지 않도록 가상머신을 사용한다.

    출처 : https://namu.wiki/w/%EA%B0%80%EC%83%81%EB%A8%B8%EC%8B%A0

    ​	

-   #### apt와 aptitude? 그 둘의 차이란? 

    -   #### apt(advanced package tool)이란? 

        패키지 간 의존성 문제에 대한 해법을 제시하고 이에 요구되는 패키지를 찾아내며, 실질적으로(응용 프로그램)패키지 설치와 삭제를 담당하는 dpkg라는 별개의 도구와 함께 동작한다.  현 시점에서 apt집합체들과 유연하게 사용되어 권장되는 도구로 aptitude가 있다. apt도구들은 aptitude로 처리하기 힘든 특수 관리 액션을 처리할 때, 또는 특히 의존성 문제로 더욱 민감한 상활일 때 사용되는 편이다.

        

    -   #### aptitude란?

        Aptitude 는 [Ncurses](https://wiki.debian.org/ko/Ncurses) 인터페이스(터미널과 별개의 TUI API제공 라이브러리)를 제공하는 [Apt](https://wiki.debian.org/ko/Apt) 프런트 엔드 Debian 패키지 관리자이다. 텍스트 기반이기 때문에 터미널에서 또는 CLI (명령행 인터페이스)로 실행할 수 있다. 

        -   mutt 와 유사한 문법으로 패키지명을 유연하게 조회할 수 있다.

        -   "automatically installed(의존성 때문에 자동 선택됨)" 또는 "manually installed(유저가 직접 선택함)" 로 패키지 조건을 지정해서 *auto-removed when no longer required (더 이상 필요하지 않을 때 자동으로 삭제처리)*가 이루어지도록 할 수 있다.

        -   패키지에 적용될 처리액션을 색상으로 표현해서 쉽게 확인가능.

        -   dselect 처럼 패키지에 대해 대화식으로 연속적인 액션처리를 지원한다. (예: 의존성 문제 발생 시 삭제/설치/보류에 관한 기준 제시 및 적용한 액션이 실행단계로 넘어가기 전에 취소.. 등)

        -   패키지에 포함된 Debian changelog 조회 및 출력 지원

        -   [AptCLI](https://wiki.debian.org/AptCLI) (= apt-get + apt-cache) 와 호환되는 명령행 모드를 지원 ("aptitude install foo")

        -   점수제도 기인하여 (일반적으로) apt-get 보다 더욱 효율적으로 의존성 해결책을 제시함. aptitude 는 비대하지 않으며 스스로 패키지 보관소를 청소하고 익히기 쉽다. 하지만 이것 또한 자잘하고 그 밖에 더 많을 기능을 처리할 수 있는 만능 유틸리티는 아니다.

            

-   #### Apparmor란?

    **AppArmor** ("Application Armor")는 시스템 관리자가 프로그램 프로필 별로 프로그램의 역량을 제한할 수 있게 해주는 [리눅스 커널](https://ko.wikipedia.org/wiki/리눅스_커널) [보안 모듈](https://ko.wikipedia.org/wiki/리눅스_보안_모듈)이다. 프로필들은 네트워크 액세스, raw 소켓 액세스 그리고 파일의 읽기, 쓰기, 실행 같은 능력을 허용할 수 있다. AppArmor는 강제적 접근 통제(MAC)를 제공함으로써 전통적인 유닉스 임의적 접근 통제(DAC) 모델을 지원한다.

    

    -   Difference Between MAC and DAC

        1.MAC provides access based on levels while DAC provides access based on identity
        2.DAC is more labor intensive than MAC
        3.DAC is more flexible than MAC
        4.MAC access can only be changed by admins while DAC access can be provided by other users

    ##### 출처

    

-   #### monitoring.sh 정상적으로 작동하고 있는가?



##### 출처 

​	[Mandatory Access Control vs Discretionary Access Control | MAC vs DAC](https://www.ekransystem.com/en/blog/mac-vs-dac)
​	[Difference Between MAC and DAC | Difference Between](http://www.differencebetween.net/technology/software-t	echnology/difference-between-mac-and-dac/)
​	https://www.scs.stanford.edu/05au-cs240c/notes/l13.pdf

​	[강제적 접근 제어 모델](https://terms.naver.com/entry.naver?docId=3432103&cid=58437&categoryId=58437)

​	[AppArmor - ArchWiki](https://wiki.archlinux.org/title/AppArmor)

 	[가상 머신 - 위키백과, 우리 모두의 백과사전](https://ko.wikipedia.org/wiki/%EA%B0%80%EC%83%81_%EB%A8%B8%EC%8B%A0)

​	 https://zetawiki.com/wiki/%ED%98%B8%EC%8A%A4%ED%8A%B8OS,_%EA%B2%8C%EC%8A%A4%ED%8A%B8OS

 	https://happy-chipmunk.tistory.com/entry/4-Virtual-MachineVM-%EA%B0%80%EC%83%81%EB%A8%B8%EC%8B%A0%EC%9D%B4%EB%9E%80-%EB%AC%B4%EC%97%87%EC%9D%B8%EA%B0%80



## Simple setup

-   #### GUI -X

-   #### 정해진 비밀번호에 집중해라 서브젝트에 명시된 룰을 따라야 한다.

-   #### ufw, ssh가 실행되고 있는지 확인해라

    

-   #### 설치된 운영체제 확인해라.

    `uname --all` 

##### 출처 

https://ko.wikipedia.org/wiki/%EA%B7%B8%EB%9E%98%ED%94%BD_%EC%82%AC%EC%9A%A9%EC%9E%90_%EC%9D%B8%ED%84%B0%ED%8E%98%EC%9D%B4%EC%8A%A4



## User

-   #### sudo와 user42그룹에 user가 속한지 확인하라.

    `getent group user42`

-   #### 비밀번호 정책이 규칙대로 지정되어 있는지 확인하라.

    `sudo vim /etc/pam.d/common-password` 

    `:se nu` 

    check `:25` 

    ` minilen=10 ucredit=-1 dcredit=-1 maxrepeat=3 reject_username difok=7 enforce_for_root`

-   #### 새로운 유저를 생성하라.

    `sudo adduser newlogin`

-   #### evaluating그룹을 생성하고, 유저를 evaluating에 할당하라

    `sudo add group evaluating` 

-   #### 안전한 비밀번호의 이점

    -   개인정보를 안전하게 보호
    -   이메일, 파일 및 기타 콘텐츠를 보호
    -   다른 사람이 내 계정에 접근하도록 방

## LVM

**Logical Volume Manager**

-   #### LVM이란?

    리눅스 커널에 논리 볼륨 관리 기능을 제공하는 장치 매퍼 대상이다. 현대의 대부분의 리눅스 배포판들은 논리 볼륨 위에 자신만의 루트 파일 시스템을 가질 수 있는 지점에 대하여 LVM을 인식한다.

-   #### 사용 목적

    -   여러개의 디스크 공간을 합쳐서 하나인양 사용하기 위해
    -   사용하기 애매한 공간의 디스크 파티션들을 활용하기 위해
    -   기존에 사용중인 디스크의 공간을 확장할 수 있기 때문에

##### 출처 

​	 https://mamu2830.blogspot.com/2019/12/lvmpv-vg-lv-pe-lvm.html

## Partition & hostname

-   hostname이 login42 인지 확인하라.

-   new_login를 생성하고 hostname을 new_login42로 변경하라

-   reboot 하고나서 변경된 hostname이 적용되었는지 확인하라

-   이제 초기 설정으로 복구해도 된다.

-   가상머신의 파티션을 어떻게 확인할 수 있는지 확인해라.

-   서브젝트에서 주어진 결과와 확인해라. 

-   간단하게 LVM이 어떻게 동작하고 그것에 대한 모든 것을 간단하게 설명해야한다.

    **NOTE**

    만약 보너스를 수행했다면 보너스 예시를 언급하는게 필수

    예상대로 동작하지 않는다면 평가는 여기서 멈춘다.

## SUDO

**Super user do**

-   Sudo 설치됐는지 확인해라.

    `dpkg -l | grep sudo`

-   새로운 유저를 sudo그룹에 추가하라.

    `adduser new_user sudo`

-   sudo를 사용해보고, 이것의 가치에 대해서 이야기하라.

    

    ```
    리눅스 커맨드라인 완벽입문서(윌리엄 E.샤츠 주니어) page 102
    
    몇 년 전 만에도, 리눅스 배포판 대부분은 이 목적으로 su 명령에만 의지했다. su는 sudo에 필요한 설정이 필요하지 않았다. 그리고 유닉스는 전통적으로 루트 계정을 가지고 있다. 이는 문제를 불러왔다. 사용자들은 불필요하게 루트로 명령을 수행하는 유혹에 빠져 들었다. 일부 사용자들은 오로지 "Permission denied"메시지를 피하기 위해서 루트 사용자로 자신의 시스템을 운영했다. 이렇게 해서 리눅스 시스템의 보안을 윈도우즈 수준으로 약화시킨다. 이것은 그리 좋은 생각이 아니다.
    
    우분투가 처음 선보였을 때, 우분투의 창시자는 기존과 다른 방침을 취했다. 기본적으로, 우분투는 루트 계정 로그인을 비활성하였고(계정 비밀번호 설정이 불가능하게) 대신에 sudo 명령어로 슈퍼유저 특권 허용을 허용하였다. 처음 사용자 계정은 sudo명령으로 슈퍼유저 특권에 완전한 접근이 허용되고 하위 계정에 대하여 슈퍼유저 권한을 보장한다.
    ```

    -   su 와의 차이점
        -   sudosms 슈퍼유저의 비밀번호를 요구하지 않는다.
        -   새로운 쉘을 시작하지 않는다.

    

-   subject에서 sudo에 요구하는 규칙을 준수하는가?

    `vim /etc/sudoers.d/sudoconf`

    -   체크리스트
        -   비밀번호 재시도 3회
        -   비밀번호 
        -   sudo 로그파일 `var/log/sudo/sudolog`
        -   tty환경 요구
        -   sudo 사용경로 지정

-   sudo 명령어 정상적으로 작동하는가?

## UFW

**Uncomplicated Firewall**

데비안 계열 및 다양한 리눅스 환경에서 작동되는 사용하기 쉬운 방화벽 관리 프로그램이다.

-   #### 방화벽?

    미리 정의된 보안 규칙에 기반한, 들어고 나가는 네트워크 트래픽을 모니터링하고 제어하는 네트워크 보안 시스템이다. 방화벽은 일반적으로 신뢰할 수 있는 내부 네트웤, 신뢰할 수 없는 외부 네트워트 간의 장벽을 구성한다. 서로 다른 네트워크를 지나는 데이터를 허용하거나 거부하거나 검열, 수정하는 하드웨어나 소프트웨어 장치이다.

##### 출처

​	https://ko.wikipedia.org/wiki/UFW

## SSH

**Secrure Shell**

-   #### 설치 확인하기

    `dpkg -l | grep ssh`

    

-   #### SSH란?

    -   SSH

        원격지에 있는 컴퓨터를 안전하게 제어하기 위한 프로토콜 도는 이 프로토콜을 사용하는 프로그램들을 의미한다. SSH 클라이언트와 SSH 서버의 관계로 상호작용하면서 SSH 서버가 설치된 운영체제를 제어한다. 클라이언트와 서버 사이에는 강력한 암호화 방법을 통해서 연결되어 있기 때문에 중간에 가로채도 해석할 수 없는 암초화된 문자만이 노출된다. Telnet을 대체하기 위한 통신 방법이다. (Telnet은 평문통신)

    -   SSH Key

        서버에 접속 할 때 비밀번호 대신 key를 제출하는 방식. 공개키(public key)와 비공개키(private key)로 이루어지는데 이를 생성하기 위해 ssh-keygen이라는 도구를 사용한다. 공개키는 암호화하는데 쓰이며, 비공개키는 암호문을 복호화하는데 사용된다. 서버 authorized_key에 공개키를 업로드하고 SSH 접속을 시도하면 클라이언트가 로컬 머신의 공개키과 원격머신의 공개키를 비교해서 둘이 일치하는지 확인한다.

        -   **용도**
            -   비밀번호 보다 높은 수준의 보안을 필요로 할 때
            -   로그인 없이 자동으로 서버에 접속할 때

-   #### 최근 생성한 계정으로 로그인해라.

-   #### root로 로그인 할 수 없음을 보여라.

    `vi /etc/ssh/sshd_config` 

    ` :32 PermitRootLogin no` 

##### 출처 

​	https://ko.wikipedia.org/wiki/%EC%8B%9C%ED%81%90%EC%96%B4_%EC%85%B8

​	 https://medium.com/@jspark141515/ssh-key-%EA%B0%9C%EC%9A%94-%EB%B0%8F-key-%ED%8C%8C%EC%9D%BC-%EC%83%9D%EC%84%B1%ED%95%98%EA%B8%B0-a38d2671db83

​	https://opentutorials.org/course/128/3732



## Script Monitoring

cron이 무엇인지 설명해라.
코드가 어떻게 동작하는지 설명해줘라. 스크립트를 30초마다 실행시켜라
서버가 실행될 때 스크립트 수정없이 동작을 멈추는 걸 보여라.
실행될 때 스크립트가 동일한 위치에 있는 것을 확인해라 . 그것은 변형됐으면 안된다.

평가 외 명령어 참고하기 

[GitHub - Tucapulcinelli/Born2beRoot](https://github.com/Tucapulcinelli/Born2beRoot)  



