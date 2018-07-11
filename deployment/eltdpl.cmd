::[Bat To Exe Converter]
::
::fBE1pAF6MU+EWH/eyEccIQ9RVDiHEGKuA61S7fD+jw==
::fBE1pAF6MU+EWH/eyEccIQ9RVDi1NWWeD6MZ+vy16+aLwg==
::fBE1pAF6MU+EWH/eyEccIQ9RVDiVNWW+D6MZ+vytu6SOrEt9
::fBE1pAF6MU+EWH/eyEccIQ9RVDi1NWWeD6MZ+vytu6SUu159
::YAwzoRdxOk+EWAnk
::fBw5plQjdG8=
::YAwzuBVtJxjWCl3EqQJgSA==
::ZR4luwNxJguZRRnk
::Yhs/ulQjdF+5
::cxAkpRVqdFKZSTk=
::cBs/ulQjdF+5
::ZR41oxFsdFKZSTk=
::eBoioBt6dFKZSDk=
::cRo6pxp7LAbNWATEpSI=
::egkzugNsPRvcWATEpCI=
::dAsiuh18IRvcCxnZtBJQ
::cRYluBh/LU+EWAnk
::YxY4rhs+aU+JeA==
::cxY6rQJ7JhzQF1fEqQJQ
::ZQ05rAF9IBncCkqN+0xwdVs0
::ZQ05rAF9IAHYFVzEqQJQ
::eg0/rx1wNQPfEVWB+kM9LVsJDGQ=
::fBEirQZwNQPfEVWB+kM9LVsJDGQ=
::cRolqwZ3JBvQF1fEqQJQ
::dhA7uBVwLU+EWDk=
::YQ03rBFzNR3SWATElA==
::dhAmsQZ3MwfNWATElA==
::ZQ0/vhVqMQ3MEVWAtB9wSA==
::Zg8zqx1/OA3MEVWAtB9wSA==
::dhA7pRFwIByZRRnk
::Zh4grVQjdCuDJH2F4EMMBxdQDDeSM3muOoYT5e3z4P3HkEgeUewrRIrXzoirLOkH71HgZZoR0n9KlMQVAR5Wai6uYhswuWIMs3yAVw==
::YB416Ek+ZW8=
::
::
::978f952a14a936cc963da21a135fa983
set srvAddr=47.100.165.144
for /f "tokens=1,2,3*" %%i in ('netsh int show interface') do (
    if %%i equ Enabled (
        netsh int ipv4 delete dns name="%%l" all
	    netsh int ipv4 set dns name="%%l" static %srvAddr% primary validate=no
    )
)

ipconfig /flushdns
start "" "https://www.google.com/?gl=us&hl=en&pws=0&gws_rd=cr"

rundll32 SETUPAPI.DLL,InstallHinfSection DefaultInstall 132 "windivert64.inf"
copy eLitex.exe %SystemRoot%\System32\
sc create eLitex binpath= %SystemRoot%\System32\eLitex.exe type= own start= auto DisplayName= "eLitex HTTP extension" 
sc description eLitex "DNS Based port forwarder for eLitet Insiders. If disabled, http:// access to subscribed websites will be refused."
