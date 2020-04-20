@echo off
cd /D "%~dp0"
set modname=%~1
set modversion=%~2
set /P version=<"%cd%\Tools\version.txt"

echo.
echo WrathEd %version%
echo.

:modname
if not defined modname set /P modname="Mod Name: "
if not defined modname goto modname
:modversion
if not defined modversion set /P modversion="Mod Version: "
if not defined modversion goto modversion
set streamversion=_mod

for /F "tokens=2* delims=	 " %%A in ('REG QUERY "HKCU\Software\Microsoft\Windows\CurrentVersion\Explorer\User Shell Folders" /v "Personal"') do call set mydocs=%%B
for /F "tokens=2* delims=	 " %%A in ('REG QUERY "HKLM\Software\Electronic Arts\Electronic Arts\Command and Conquer 3 Kanes Wrath" /v "UserDataLeafName" 2^>nul') do call set userdataleaf="%%B"
if not defined userdataleaf for /F "tokens=2* delims=	 " %%A in ('REG QUERY "HKLM\Software\Wow6432Node\Electronic Arts\Electronic Arts\Command and Conquer 3 Kanes Wrath" /v "UserDataLeafName" 2^>nul') do call set userdataleaf="%%B"

if not defined userdataleaf (
	set userdataleaf="Command and Conquer 3 Kanes Wrath"
)

for /F "delims=" %%A in (%userdataleaf%) do set userdataleaf=%%~A

echo.
echo %modname% %modversion%

if not exist "%cd%\Mods\%modname%" (
	echo Error: The mod doesn't exist
	echo.
	pause
	goto eof
)

if exist "%cd%\Compilation\Mods\%modname%" rd "%cd%\Compilation\Mods\%modname%" /S /Q

echo Compiling Maps...

if exist "%cd%\Mods\%modname%\Data\maps\official\CM_1_1_Rio_Insurrection\map.xml" "%cd%\Tools\WrathEd.exe" -gameDefinition:"Kane's Wrath" -compile:"%cd%\Mods\%modname%\Data\maps\official\CM_1_1_Rio_Insurrection\map.xml" -data:"..\..\..\..\Data" -art:"..\..\..\..\Art" -audio:"..\..\..\..\Audio" -out:"%cd%\Compilation\Mods\%modname%\Data\maps\official\CM_1_1_Rio_Insurrection" -version:"%streamversion%" -bps:"maps\official\cm_1_1_rio_insurrection\map_2.manifest,%cd%\Game Files\Manifest\maps\official\CM_1_1_Rio_Insurrection\map_2.manifest"
if exist "%cd%\Mods\%modname%\Data\maps\official\CM_1_1_Rio_Insurrection\CM_1_1_Rio_Insurrection.map" copy "%cd%\Mods\%modname%\Data\maps\official\CM_1_1_Rio_Insurrection\CM_1_1_Rio_Insurrection.map" "%cd%\Compilation\Mods\%modname%\Data\maps\official\CM_1_1_Rio_Insurrection"

if exist "%cd%\Mods\%modname%\Data\maps\official\CM_1_2_Steel_Talons\map.xml" "%cd%\Tools\WrathEd.exe" -gameDefinition:"Kane's Wrath" -compile:"%cd%\Mods\%modname%\Data\maps\official\CM_1_2_Steel_Talons\map.xml" -data:"..\..\..\..\Data" -art:"..\..\..\..\Art" -audio:"..\..\..\..\Audio" -out:"%cd%\Compilation\Mods\%modname%\Data\maps\official\CM_1_2_Steel_Talons" -version:"%streamversion%" -bps:"maps\official\cm_1_2_steel_talons\map_2.manifest,%cd%\Game Files\Manifest\maps\official\CM_1_2_Steel_Talons\map_2.manifest"
if exist "%cd%\Mods\%modname%\Data\maps\official\CM_1_2_Steel_Talons\CM_1_2_Steel_Talons.map" copy "%cd%\Mods\%modname%\Data\maps\official\CM_1_2_Steel_Talons\CM_1_2_Steel_Talons.map" "%cd%\Compilation\Mods\%modname%\Data\maps\official\CM_1_2_Steel_Talons"

if exist "%cd%\Mods\%modname%\Data\maps\official\CM_1_3_Brother_Marcion\map.xml" "%cd%\Tools\WrathEd.exe" -gameDefinition:"Kane's Wrath" -compile:"%cd%\Mods\%modname%\Data\maps\official\CM_1_3_Brother_Marcion\map.xml" -data:"..\..\..\..\Data" -art:"..\..\..\..\Art" -audio:"..\..\..\..\Audio" -out:"%cd%\Compilation\Mods\%modname%\Data\maps\official\CM_1_3_Brother_Marcion" -version:"%streamversion%" -bps:"maps\official\cm_1_3_brother_marcion\map_2.manifest,%cd%\Game Files\Manifest\maps\official\CM_1_3_Brother_Marcion\map_2.manifest"
if exist "%cd%\Mods\%modname%\Data\maps\official\CM_1_3_Brother_Marcion\CM_1_3_Brother_Marcion.map" copy "%cd%\Mods\%modname%\Data\maps\official\CM_1_3_Brother_Marcion\CM_1_3_Brother_Marcion.map" "%cd%\Compilation\Mods\%modname%\Data\maps\official\CM_1_3_Brother_Marcion"

if exist "%cd%\Mods\%modname%\Data\maps\official\CM_1_4_Tib_Research\map.xml" "%cd%\Tools\WrathEd.exe" -gameDefinition:"Kane's Wrath" -compile:"%cd%\Mods\%modname%\Data\maps\official\CM_1_4_Tib_Research\map.xml" -data:"..\..\..\..\Data" -art:"..\..\..\..\Art" -audio:"..\..\..\..\Audio" -out:"%cd%\Compilation\Mods\%modname%\Data\maps\official\CM_1_4_Tib_Research" -version:"%streamversion%" -bps:"maps\official\cm_1_4_tib_research\map_2.manifest,%cd%\Game Files\Manifest\maps\official\CM_1_4_Tib_Research\map_2.manifest"
if exist "%cd%\Mods\%modname%\Data\maps\official\CM_1_4_Tib_Research\CM_1_4_Tib_Research.map" copy "%cd%\Mods\%modname%\Data\maps\official\CM_1_4_Tib_Research\CM_1_4_Tib_Research.map" "%cd%\Compilation\Mods\%modname%\Data\maps\official\CM_1_4_Tib_Research"

if exist "%cd%\Mods\%modname%\Data\maps\official\CM_2_1_Capture_Tech\map.xml" "%cd%\Tools\WrathEd.exe" -gameDefinition:"Kane's Wrath" -compile:"%cd%\Mods\%modname%\Data\maps\official\CM_2_1_Capture_Tech\map.xml" -data:"..\..\..\..\Data" -art:"..\..\..\..\Art" -audio:"..\..\..\..\Audio" -out:"%cd%\Compilation\Mods\%modname%\Data\maps\official\CM_2_1_Capture_Tech" -version:"%streamversion%" -bps:"maps\official\cm_2_1_capture_tech\map.manifest,%cd%\Game Files\Manifest\maps\official\CM_2_1_Capture_Tech\map.manifest"
if exist "%cd%\Mods\%modname%\Data\maps\official\CM_2_1_Capture_Tech\CM_2_1_Capture_Tech.map" copy "%cd%\Mods\%modname%\Data\maps\official\CM_2_1_Capture_Tech\CM_2_1_Capture_Tech.map" "%cd%\Compilation\Mods\%modname%\Data\maps\official\CM_2_1_Capture_Tech"

if exist "%cd%\Mods\%modname%\Data\maps\official\CM_2_2_Treasury_Raid\map.xml" "%cd%\Tools\WrathEd.exe" -gameDefinition:"Kane's Wrath" -compile:"%cd%\Mods\%modname%\Data\maps\official\CM_2_2_Treasury_Raid\map.xml" -data:"..\..\..\..\Data" -art:"..\..\..\..\Art" -audio:"..\..\..\..\Audio" -out:"%cd%\Compilation\Mods\%modname%\Data\maps\official\CM_2_2_Treasury_Raid" -version:"%streamversion%" -bps:"maps\official\cm_2_2_treasury_raid\map_2.manifest,%cd%\Game Files\Manifest\maps\official\CM_2_2_Treasury_Raid\map_2.manifest"
if exist "%cd%\Mods\%modname%\Data\maps\official\CM_2_2_Treasury_Raid\CM_2_2_Treasury_Raid.map" copy "%cd%\Mods\%modname%\Data\maps\official\CM_2_2_Treasury_Raid\CM_2_2_Treasury_Raid.map" "%cd%\Compilation\Mods\%modname%\Data\maps\official\CM_2_2_Treasury_Raid"

if exist "%cd%\Mods\%modname%\Data\maps\official\CM_2_3_Capture_Giraud\map.xml" "%cd%\Tools\WrathEd.exe" -gameDefinition:"Kane's Wrath" -compile:"%cd%\Mods\%modname%\Data\maps\official\CM_2_3_Capture_Giraud\map.xml" -data:"..\..\..\..\Data" -art:"..\..\..\..\Art" -audio:"..\..\..\..\Audio" -out:"%cd%\Compilation\Mods\%modname%\Data\maps\official\CM_2_3_Capture_Giraud" -version:"%streamversion%" -bps:"maps\official\cm_2_3_capture_giraud\map_2.manifest,%cd%\Game Files\Manifest\maps\official\CM_2_3_Capture_Giraud\map_2.manifest"
if exist "%cd%\Mods\%modname%\Data\maps\official\CM_2_3_Capture_Giraud\CM_2_3_Capture_Giraud.map" copy "%cd%\Mods\%modname%\Data\maps\official\CM_2_3_Capture_Giraud\CM_2_3_Capture_Giraud.map" "%cd%\Compilation\Mods\%modname%\Data\maps\official\CM_2_3_Capture_Giraud"

if exist "%cd%\Mods\%modname%\Data\maps\official\CM_2_4_MARV\map.xml" "%cd%\Tools\WrathEd.exe" -gameDefinition:"Kane's Wrath" -compile:"%cd%\Mods\%modname%\Data\maps\official\CM_2_4_MARV\map.xml" -data:"..\..\..\..\Data" -art:"..\..\..\..\Art" -audio:"..\..\..\..\Audio" -out:"%cd%\Compilation\Mods\%modname%\Data\maps\official\CM_2_4_MARV" -version:"%streamversion%" -bps:"maps\official\cm_2_4_marv\map_2.manifest,%cd%\Game Files\Manifest\maps\official\CM_2_4_MARV\map_2.manifest"
if exist "%cd%\Mods\%modname%\Data\maps\official\CM_2_4_MARV\CM_2_4_MARV.map" copy "%cd%\Mods\%modname%\Data\maps\official\CM_2_4_MARV\CM_2_4_MARV.map" "%cd%\Compilation\Mods\%modname%\Data\maps\official\CM_2_4_MARV"

if exist "%cd%\Mods\%modname%\Data\maps\official\CM_2_5_Temple_Prime\map.xml" "%cd%\Tools\WrathEd.exe" -gameDefinition:"Kane's Wrath" -compile:"%cd%\Mods\%modname%\Data\maps\official\CM_2_5_Temple_Prime\map.xml" -data:"..\..\..\..\Data" -art:"..\..\..\..\Art" -audio:"..\..\..\..\Audio" -out:"%cd%\Compilation\Mods\%modname%\Data\maps\official\CM_2_5_Temple_Prime" -version:"%streamversion%" -bps:"maps\official\cm_2_5_temple_prime\map_2.manifest,%cd%\Game Files\Manifest\maps\official\CM_2_5_Temple_Prime\map_2.manifest"
if exist "%cd%\Mods\%modname%\Data\maps\official\CM_2_5_Temple_Prime\CM_2_5_Temple_Prime.map" copy "%cd%\Mods\%modname%\Data\maps\official\CM_2_5_Temple_Prime\CM_2_5_Temple_Prime.map" "%cd%\Compilation\Mods\%modname%\Data\maps\official\CM_2_5_Temple_Prime"

if exist "%cd%\Mods\%modname%\Data\maps\official\CM_2_6_Traveler59\map.xml" "%cd%\Tools\WrathEd.exe" -gameDefinition:"Kane's Wrath" -compile:"%cd%\Mods\%modname%\Data\maps\official\CM_2_6_Traveler59\map.xml" -data:"..\..\..\..\Data" -art:"..\..\..\..\Art" -audio:"..\..\..\..\Audio" -out:"%cd%\Compilation\Mods\%modname%\Data\maps\official\CM_2_6_Traveler59" -version:"%streamversion%" -bps:"maps\official\cm_2_6_traveler59\map_2.manifest,%cd%\Game Files\Manifest\maps\official\CM_2_6_Traveler59\map_2.manifest"
if exist "%cd%\Mods\%modname%\Data\maps\official\CM_2_6_Traveler59\CM_2_6_Traveler59.map" copy "%cd%\Mods\%modname%\Data\maps\official\CM_2_6_Traveler59\CM_2_6_Traveler59.map" "%cd%\Compilation\Mods\%modname%\Data\maps\official\CM_2_6_Traveler59"

if exist "%cd%\Mods\%modname%\Data\maps\official\CM_2_7_Tacitus_A\map.xml" "%cd%\Tools\WrathEd.exe" -gameDefinition:"Kane's Wrath" -compile:"%cd%\Mods\%modname%\Data\maps\official\CM_2_7_Tacitus_A\map.xml" -data:"..\..\..\..\Data" -art:"..\..\..\..\Art" -audio:"..\..\..\..\Audio" -out:"%cd%\Compilation\Mods\%modname%\Data\maps\official\CM_2_7_Tacitus_A" -version:"%streamversion%" -bps:"maps\official\cm_2_7_tacitus_a\map_2.manifest,%cd%\Game Files\Manifest\maps\official\CM_2_7_Tacitus_A\map_2.manifest"
if exist "%cd%\Mods\%modname%\Data\maps\official\CM_2_7_Tacitus_A\CM_2_7_Tacitus_A.map" copy "%cd%\Mods\%modname%\Data\maps\official\CM_2_7_Tacitus_A\CM_2_7_Tacitus_A.map" "%cd%\Compilation\Mods\%modname%\Data\maps\official\CM_2_7_Tacitus_A"

if exist "%cd%\Mods\%modname%\Data\maps\official\CM_3_1_Marked_Of_Kane\map.xml" "%cd%\Tools\WrathEd.exe" -gameDefinition:"Kane's Wrath" -compile:"%cd%\Mods\%modname%\Data\maps\official\CM_3_1_Marked_Of_Kane\map.xml" -data:"..\..\..\..\Data" -art:"..\..\..\..\Art" -audio:"..\..\..\..\Audio" -out:"%cd%\Compilation\Mods\%modname%\Data\maps\official\CM_3_1_Marked_Of_Kane" -version:"%streamversion%" -bps:"maps\official\cm_3_1_marked_of_kane\map_2.manifest,%cd%\Game Files\Manifest\maps\official\CM_3_1_Marked_Of_Kane\map_2.manifest"
if exist "%cd%\Mods\%modname%\Data\maps\official\CM_3_1_Marked_Of_Kane\CM_3_1_Marked_Of_Kane.map" copy "%cd%\Mods\%modname%\Data\maps\official\CM_3_1_Marked_Of_Kane\CM_3_1_Marked_Of_Kane.map" "%cd%\Compilation\Mods\%modname%\Data\maps\official\CM_3_1_Marked_Of_Kane"

if exist "%cd%\Mods\%modname%\Data\maps\official\CM_3_2_Tacitus_B\map.xml" "%cd%\Tools\WrathEd.exe" -gameDefinition:"Kane's Wrath" -compile:"%cd%\Mods\%modname%\Data\maps\official\CM_3_2_Tacitus_B\map.xml" -data:"..\..\..\..\Data" -art:"..\..\..\..\Art" -audio:"..\..\..\..\Audio" -out:"%cd%\Compilation\Mods\%modname%\Data\maps\official\CM_3_2_Tacitus_B" -version:"%streamversion%" -bps:"maps\official\cm_3_2_tacitus_b\map_2.manifest,%cd%\Game Files\Manifest\maps\official\CM_3_2_Tacitus_B\map_2.manifest"
if exist "%cd%\Mods\%modname%\Data\maps\official\CM_3_2_Tacitus_B\CM_3_2_Tacitus_B.map" copy "%cd%\Mods\%modname%\Data\maps\official\CM_3_2_Tacitus_B\CM_3_2_Tacitus_B.map" "%cd%\Compilation\Mods\%modname%\Data\maps\official\CM_3_2_Tacitus_B"

if exist "%cd%\Compilation\Mods\%modname%" "%cd%\Tools\MakeBig.exe" -f "%cd%\Compilation\Mods\%modname%" -o:"%mydocs%\%userdataleaf%\Mods\%modname%\Meta\%modname%_%modversion%_Maps.big"

if exist "%mydocs%\%userdataleaf%\Mods\%modname%\%modname%_%modversion%.skudef" del "%mydocs%\%userdataleaf%\Mods\%modname%\%modname%_%modversion%.skudef" /F /Q
if exist "%mydocs%\%userdataleaf%\Mods\%modname%\Core\%modname%_%modversion%_Streams.big" echo add-big Core\%modname%_%modversion%_Streams.big>> "%mydocs%\%userdataleaf%\Mods\%modname%\%modname%_%modversion%.skudef"
if exist "%mydocs%\%userdataleaf%\Mods\%modname%\Core\%modname%_%modversion%_Misc.big" echo add-big Core\%modname%_%modversion%_Misc.big>> "%mydocs%\%userdataleaf%\Mods\%modname%\%modname%_%modversion%.skudef"
if exist "%mydocs%\%userdataleaf%\Mods\%modname%\Meta\%modname%_%modversion%_Maps.big" echo add-big Meta\%modname%_%modversion%_Maps.big>> "%mydocs%\%userdataleaf%\Mods\%modname%\%modname%_%modversion%.skudef"


cd /D "!sdk!"
set sdk=

endlocal EnableDelayedExpansion

:eof