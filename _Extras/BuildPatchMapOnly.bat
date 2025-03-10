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

echo Compiling SP Maps...

if exist "%cd%\Compilation\Mods\%modname%" rd "%cd%\Compilation\Mods\%modname%" /S /Q

set SP=cm_1_1_rio_insurrection cm_1_2_steel_talons cm_1_3_brother_marcion cm_1_4_tib_research^
 cm_2_1_capture_tech cm_2_2_treasury_raid cm_2_3_capture_giraud cm_2_4_marv cm_2_5_temple_prime cm_2_6_traveler59 cm_2_7_tacitus_a^
 cm_3_1_marked_of_kane cm_3_2_tacitus_b
 
for %%A in (%SP%) do (
	echo Compiling Map %%A...
	if exist "%cd%\Mods\%modname%\Data\maps\official\%%A\map.xml" (
		if exist "%cd%\Game Files\Manifest\maps\official\%%A\map_2.manifest" (
			"%cd%\Tools\WrathEd.exe" -gameDefinition:"Kane's Wrath" -compile:"%cd%\Mods\%modname%\Data\maps\official\%%A\map.xml" -data:"..\..\..\..\Data" -art:"..\..\..\..\Art" -audio:"..\..\..\..\Audio" -out:"%cd%\Compilation\Mods\%modname%\Data\maps\official\%%A" -version:"%streamversion%" -bps:"maps\official\%%A\map_2.manifest,%cd%\Game Files\Manifest\maps\official\%%A\map_2.manifest"
		) else if exist "%cd%\Game Files\Manifest\maps\official\%%A\map_1.manifest" (
			"%cd%\Tools\WrathEd.exe" -gameDefinition:"Kane's Wrath" -compile:"%cd%\Mods\%modname%\Data\maps\official\%%A\map.xml" -data:"..\..\..\..\Data" -art:"..\..\..\..\Art" -audio:"..\..\..\..\Audio" -out:"%cd%\Compilation\Mods\%modname%\Data\maps\official\%%A" -version:"%streamversion%" -bps:"maps\official\%%A\map_1.manifest,%cd%\Game Files\Manifest\maps\official\%%A\map_1.manifest"	
		) else if exist "%cd%\Game Files\Manifest\maps\official\%%A\map.manifest" (
			"%cd%\Tools\WrathEd.exe" -gameDefinition:"Kane's Wrath" -compile:"%cd%\Mods\%modname%\Data\maps\official\%%A\map.xml" -data:"..\..\..\..\Data" -art:"..\..\..\..\Art" -audio:"..\..\..\..\Audio" -out:"%cd%\Compilation\Mods\%modname%\Data\maps\official\%%A" -version:"%streamversion%" -bps:"maps\official\%%A\map.manifest,%cd%\Game Files\Manifest\maps\official\%%A\map.manifest"	
		)
	)
	if exist "%cd%\Mods\%modname%\Data\maps\official\%%A\%%A.map" copy "%cd%\Mods\%modname%\Data\maps\official\%%A\%%A.map" "%cd%\Compilation\Mods\%modname%\Data\maps\official\%%A"	
	
	if exist "%cd%\Compilation\Mods\%modname%\Data\maps\official\%%A\stringhashes.manifest" del "%cd%\Compilation\Mods\%modname%\Data\maps\official\%%A\stringhashes.*"
)

if exist "%cd%\Mods\%modname%\Data\AdditionalMaps\mapmetadata_SinglePlayer.xml" "%cd%\Tools\WrathEd.exe" -gameDefinition:"Kane's Wrath" -compile:"%cd%\Mods\%modname%\Data\AdditionalMaps\mapmetadata_SinglePlayer.xml" -out:"%cd%\Compilation\Mods\%modname%\Data\AdditionalMaps" -version:""

if exist "%cd%\Compilation\Mods\%modname%\Data\AdditionalMaps\stringhashes.manifest" del "%cd%\Compilation\Mods\%modname%\Data\AdditionalMaps\stringhashes.*"

if exist "%cd%\Compilation\Mods\%modname%" "%cd%\Tools\MakeBig.exe" -f "%cd%\Compilation\Mods\%modname%" -o:"%mydocs%\%userdataleaf%\Mods\%modname%\SP\%modname%_%modversion%_SPMaps.big"

echo Compiling MP Maps...

if exist "%cd%\Compilation\Mods\%modname%" rd "%cd%\Compilation\Mods\%modname%" /S /Q

set MP=map_mp_2_bass1^
 map_mp_2_black1 map_mp_2_black10 map_mp_2_black11 map_mp_2_black12 map_mp_2_black2 map_mp_2_black3 map_mp_2_black4 map_mp_2_black5 map_mp_2_black6 map_mp_2_black7 map_mp_2_black8 map_mp_2_black9^
 map_mp_2_chuck1 map_mp_2_simon map_mp_simon_b map_mp_2_will1^
 map_mp_3_black1 map_mp_3_black2^
 map_mp_4_bass map_mp_4_bender map_mp_4_black1 map_mp_4_black5 map_mp_4_black6 map_mp_4_chuck1 map_mp_4_chuck2 map_mp_4_rao map_mp_4_ssmith_01^
 map_mp_5_black1^
 map_mp_6_black1 map_mp_6_black2 map_mp_6_hayes^
 map_mp_8_bass map_mp_8_black1^
 bamap_aw01_04^
 bamap_dc01_4 bamap_dc02_4 bamap_dc03_3 bamap_dc04_3 bamap_dc05_2 bamap_dc05_3 bamap_dc06_4 bamap_dc07_4 bamap_dc08_4 bamap_dc10_4 bamap_dc11_4^
 bamap_ew01_4 bamap_ew01_4 bamap_ew03_04 bamap_ew05_04 bamap_ew06_04 bamap_ew07_04 bamap_ew08_04 bamap_ew09_03 bamap_ew10_06 bamap_ew11_05^
 bamap_jf01_4 bamap_jf03_6^
 bamap_kk03_3^
 bamap_rh01_4^
 bamap_sb01_4^
 eamap_sb01_3 eamap_sb02_3 eamap_sb03_3 eamap_sb04_3

for %%A in (%MP%) do (
	echo Compiling Map %%A...
	if exist "%cd%\Mods\%modname%\Data\maps\official\%%A\map.xml" (
		if exist "%cd%\Game Files\Manifest\maps\official\%%A\map_2.manifest" (
			"%cd%\Tools\WrathEd.exe" -gameDefinition:"Kane's Wrath" -compile:"%cd%\Mods\%modname%\Data\maps\official\%%A\map.xml" -data:"..\..\..\..\Data" -art:"..\..\..\..\Art" -audio:"..\..\..\..\Audio" -out:"%cd%\Compilation\Mods\%modname%\Data\maps\official\%%A" -version:"%streamversion%" -bps:"maps\official\%%A\map_2.manifest,%cd%\Game Files\Manifest\maps\official\%%A\map_2.manifest"
		) else if exist "%cd%\Game Files\Manifest\maps\official\%%A\map_1.manifest" (
			"%cd%\Tools\WrathEd.exe" -gameDefinition:"Kane's Wrath" -compile:"%cd%\Mods\%modname%\Data\maps\official\%%A\map.xml" -data:"..\..\..\..\Data" -art:"..\..\..\..\Art" -audio:"..\..\..\..\Audio" -out:"%cd%\Compilation\Mods\%modname%\Data\maps\official\%%A" -version:"%streamversion%" -bps:"maps\official\%%A\map_1.manifest,%cd%\Game Files\Manifest\maps\official\%%A\map_1.manifest"	
		) else if exist "%cd%\Game Files\Manifest\maps\official\%%A\map.manifest" (
			"%cd%\Tools\WrathEd.exe" -gameDefinition:"Kane's Wrath" -compile:"%cd%\Mods\%modname%\Data\maps\official\%%A\map.xml" -data:"..\..\..\..\Data" -art:"..\..\..\..\Art" -audio:"..\..\..\..\Audio" -out:"%cd%\Compilation\Mods\%modname%\Data\maps\official\%%A" -version:"%streamversion%" -bps:"maps\official\%%A\map.manifest,%cd%\Game Files\Manifest\maps\official\%%A\map.manifest"	
		)
	)
	if exist "%cd%\Mods\%modname%\Data\maps\official\%%A\%%A.map" copy "%cd%\Mods\%modname%\Data\maps\official\%%A\%%A.map" "%cd%\Compilation\Mods\%modname%\Data\maps\official\%%A"	
	
	if exist "%cd%\Compilation\Mods\%modname%\Data\maps\official\%%A\stringhashes.manifest" del "%cd%\Compilation\Mods\%modname%\Data\maps\official\%%A\stringhashes.*"
)

if exist "%cd%\Mods\%modname%\Data\mapmetadata.xml" "%cd%\Tools\WrathEd.exe" -gameDefinition:"Kane's Wrath" -compile:"%cd%\Mods\%modname%\Data\mapmetadata.xml" -out:"%cd%\Compilation\Mods\%modname%\Data" -version:""

if exist "%cd%\Compilation\Mods\%modname%\Data\stringhashes.manifest" del "%cd%\Compilation\Mods\%modname%\Data\stringhashes.*"

if exist "%cd%\Compilation\Mods\%modname%" "%cd%\Tools\MakeBig.exe" -f "%cd%\Compilation\Mods\%modname%" -o:"%mydocs%\%userdataleaf%\Mods\%modname%\MP\%modname%_%modversion%_MPMaps.big"

echo Compiling Bonus Maps...

if exist "%cd%\Compilation\Mods\%modname%" rd "%cd%\Compilation\Mods\%modname%" /S /Q

set BonusMap=eamap_sb05_4 map_mp_2_black2_redzoned map_mp_2_black7_redzoned map_mp_2_black11_redzoned map_mp_2_simon_b
 
for %%A in (%BonusMap%) do (
	echo Compiling Map %%A...
	if exist "%cd%\Mods\%modname%\Data\maps\official\%%A\map.xml" (
		if exist "%cd%\Game Files\Manifest\maps\official\%%A\map_2.manifest" (
			"%cd%\Tools\WrathEd.exe" -gameDefinition:"Kane's Wrath" -compile:"%cd%\Mods\%modname%\Data\maps\official\%%A\map.xml" -data:"..\..\..\..\Data" -art:"..\..\..\..\Art" -audio:"..\..\..\..\Audio" -out:"%cd%\Compilation\Mods\%modname%\Data\maps\official\%%A" -version:"%streamversion%" -bps:"maps\official\%%A\map_2.manifest,%cd%\Game Files\Manifest\maps\official\%%A\map_2.manifest"
		) else if exist "%cd%\Game Files\Manifest\maps\official\%%A\map_1.manifest" (
			"%cd%\Tools\WrathEd.exe" -gameDefinition:"Kane's Wrath" -compile:"%cd%\Mods\%modname%\Data\maps\official\%%A\map.xml" -data:"..\..\..\..\Data" -art:"..\..\..\..\Art" -audio:"..\..\..\..\Audio" -out:"%cd%\Compilation\Mods\%modname%\Data\maps\official\%%A" -version:"%streamversion%" -bps:"maps\official\%%A\map_1.manifest,%cd%\Game Files\Manifest\maps\official\%%A\map_1.manifest"	
		) else if exist "%cd%\Game Files\Manifest\maps\official\%%A\map.manifest" (
			"%cd%\Tools\WrathEd.exe" -gameDefinition:"Kane's Wrath" -compile:"%cd%\Mods\%modname%\Data\maps\official\%%A\map.xml" -data:"..\..\..\..\Data" -art:"..\..\..\..\Art" -audio:"..\..\..\..\Audio" -out:"%cd%\Compilation\Mods\%modname%\Data\maps\official\%%A" -version:"%streamversion%" -bps:"maps\official\%%A\map.manifest,%cd%\Game Files\Manifest\maps\official\%%A\map.manifest"	
		)
	)
	if exist "%cd%\Mods\%modname%\Data\maps\official\%%A\%%A.map" copy "%cd%\Mods\%modname%\Data\maps\official\%%A\%%A.map" "%cd%\Compilation\Mods\%modname%\Data\maps\official\%%A"	
	
	if exist "%cd%\Compilation\Mods\%modname%\Data\maps\official\%%A\stringhashes.manifest" del "%cd%\Compilation\Mods\%modname%\Data\maps\official\%%A\stringhashes.*"
)

if exist "%cd%\Mods\%modname%\Data\AdditionalMaps\mapmetadata_KWBonus.xml" "%cd%\Tools\WrathEd.exe" -gameDefinition:"Kane's Wrath" -compile:"%cd%\Mods\%modname%\Data\AdditionalMaps\mapmetadata_KWBonus.xml" -out:"%cd%\Compilation\Mods\%modname%\Data\AdditionalMaps" -version:""

if exist "%cd%\Compilation\Mods\%modname%\Data\stringhashes.manifest" del "%cd%\Compilation\Mods\%modname%\Data\stringhashes.*"

if exist "%cd%\Compilation\Mods\%modname%" "%cd%\Tools\MakeBig.exe" -f "%cd%\Compilation\Mods\%modname%" -o:"%mydocs%\%userdataleaf%\Mods\%modname%\BonusContent\%modname%_%modversion%_BonusMaps.big"

if exist "%mydocs%\%userdataleaf%\Mods\%modname%\*.skudef" del "%mydocs%\%userdataleaf%\Mods\%modname%\*.skudef" /F /Q

setlocal EnableDelayedExpansion

if exist "%cd%\Mods\%modname%\LanguagePacks" (
	set sdk=!cd!
	cd /D "!sdk!\Mods\%modname%\LanguagePacks"
	
	for /D %%A in ("*") do (
		
		if "%%A"=="english" (
		
			if exist "!sdk!\Compilation\Mods\%modname%\LanguagePacks\%%A" "!sdk!\Tools\MakeBig.exe" -f "!sdk!\Compilation\Mods\%modname%\LanguagePacks\%%A" -o:"%mydocs%\%userdataleaf%\Mods\%modname%\%%AAudio\%%AAudio.big"
			
			if exist "!cd!\%%A\Misc" "!sdk!\Tools\MakeBig.exe" -f "!cd!\%%A\Misc" -o:"!sdk!\Compilation\Mods\%modname%\LanguagePacks\%%A" -o:"%mydocs%\%userdataleaf%\Mods\%modname%\Lang-%%A\%modname%_%modversion%_%%A.big"

			if exist "%mydocs%\%userdataleaf%\Mods\%modname%\Lang-%%A\%modname%_%modversion%_%%A.big" echo add-big Lang-%%A\%modname%_%modversion%_%%A.big>> "%mydocs%\%userdataleaf%\Mods\%modname%\%modname%_%modversion%.skudef"
			if exist "%mydocs%\%userdataleaf%\Mods\%modname%\%%AAudio\%%AAudio.big" echo add-big %%AAudio\%%AAudio.big>> "%mydocs%\%userdataleaf%\Mods\%modname%\%modname%_%modversion%.skudef"
			if exist "%mydocs%\%userdataleaf%\Mods\%modname%\Core\%modname%_%modversion%_Streams.big" echo add-big Core\%modname%_%modversion%_Streams.big>> "%mydocs%\%userdataleaf%\Mods\%modname%\%modname%_%modversion%.skudef"
			if exist "%mydocs%\%userdataleaf%\Mods\%modname%\Core\%modname%_%modversion%_Misc.big" echo add-big Core\%modname%_%modversion%_Misc.big>> "%mydocs%\%userdataleaf%\Mods\%modname%\%modname%_%modversion%.skudef"
			if exist "%mydocs%\%userdataleaf%\Mods\%modname%\SP\%modname%_%modversion%_SPMaps.big" echo add-big SP\%modname%_%modversion%_SPMaps.big>> "%mydocs%\%userdataleaf%\Mods\%modname%\%modname%_%modversion%.skudef"
			if exist "%mydocs%\%userdataleaf%\Mods\%modname%\MP\%modname%_%modversion%_MPMaps.big" echo add-big MP\%modname%_%modversion%_MPMaps.big>> "%mydocs%\%userdataleaf%\Mods\%modname%\%modname%_%modversion%.skudef"
			if exist "%mydocs%\%userdataleaf%\Mods\%modname%\BonusContent\%modname%_%modversion%_BonusMaps.big" echo add-big BonusContent\%modname%_%modversion%_BonusMaps.big>> "%mydocs%\%userdataleaf%\Mods\%modname%\%modname%_%modversion%.skudef"
		) else (

			if exist "!sdk!\Compilation\Mods\%modname%_%%A\LanguagePacks\%%A" "!sdk!\Tools\MakeBig.exe" -f "!sdk!\Compilation\Mods\%modname%_%%A\LanguagePacks\%%A" -o:"%mydocs%\%userdataleaf%\Mods\%modname%\%%AAudio\%%AAudio.big"
			
			if exist "!cd!\%%A\Misc" "!sdk!\Tools\MakeBig.exe" -f "!cd!\%%A\Misc" -o:"!sdk!\Compilation\Mods\%modname%\LanguagePacks\%%A" -o:"%mydocs%\%userdataleaf%\Mods\%modname%_%%A\Lang-%%A\%modname%_%modversion%_%%A.big"

			if exist "%mydocs%\%userdataleaf%\Mods\%modname%_%%A\Lang-%%A\%modname%_%modversion%_%%A.big" echo add-big Lang-%%A\%modname%_%modversion%_%%A.big>> "%mydocs%\%userdataleaf%\Mods\%modname%_%%A\%modname%_%modversion%.skudef"
			if exist "%mydocs%\%userdataleaf%\Mods\%modname%_%%A\%%AAudio\%%AAudio.big" echo add-big %%AAudio\%%AAudio.big>> "%mydocs%\%userdataleaf%\Mods\%modname%_%%A\%modname%_%modversion%.skudef"
			if exist "%mydocs%\%userdataleaf%\Mods\%modname%\Core\%modname%_%modversion%_Streams.big" echo add-big ..\%modname%\Core\%modname%_%modversion%_Streams.big>> "%mydocs%\%userdataleaf%\Mods\%modname%_%%A\%modname%_%modversion%.skudef"
			if exist "%mydocs%\%userdataleaf%\Mods\%modname%\Core\%modname%_%modversion%_Misc.big" echo add-big ..\%modname%\Core\%modname%_%modversion%_Misc.big>> "%mydocs%\%userdataleaf%\Mods\%modname%_%%A\%modname%_%modversion%.skudef"
			if exist "%mydocs%\%userdataleaf%\Mods\%modname%\SP\%modname%_%modversion%_SPMaps.big" echo add-big ..\%modname%\SP\%modname%_%modversion%_SPMaps.big>> "%mydocs%\%userdataleaf%\Mods\%modname%_%%A\%modname%_%modversion%.skudef"
			if exist "%mydocs%\%userdataleaf%\Mods\%modname%\MP\%modname%_%modversion%_MPMaps.big" echo add-big ..\%modname%\MP\%modname%_%modversion%_MPMaps.big>> "%mydocs%\%userdataleaf%\Mods\%modname%_%%A\%modname%_%modversion%.skudef"
			if exist "%mydocs%\%userdataleaf%\Mods\%modname%\BonusContent\%modname%_%modversion%_BonusMaps.big" echo add-big ..\%modname%\BonusContent\%modname%_%modversion%_BonusMaps.big>> "%mydocs%\%userdataleaf%\Mods\%modname%_%%A\%modname%_%modversion%.skudef"
		)
	)
	
	cd /D "!sdk!"
	set sdk=
)

endlocal EnableDelayedExpansion

if not exist "%mydocs%\%userdataleaf%\Mods\%modname%\*.skudef" (
	if exist "%mydocs%\%userdataleaf%\Mods\%modname%\Core\%modname%_%modversion%_Streams.big" echo add-big Core\%modname%_%modversion%_Streams.big>> "%mydocs%\%userdataleaf%\Mods\%modname%\%modname%_%modversion%.skudef"
	if exist "%mydocs%\%userdataleaf%\Mods\%modname%\Core\%modname%_%modversion%_Misc.big" echo add-big Core\%modname%_%modversion%_Misc.big>> "%mydocs%\%userdataleaf%\Mods\%modname%\%modname%_%modversion%.skudef"
	if exist "%mydocs%\%userdataleaf%\Mods\%modname%\SP\%modname%_%modversion%_SPMaps.big" echo add-big SP\%modname%_%modversion%_SPMaps.big>> "%mydocs%\%userdataleaf%\Mods\%modname%\%modname%_%modversion%.skudef"
	if exist "%mydocs%\%userdataleaf%\Mods\%modname%\MP\%modname%_%modversion%_MPMaps.big" echo add-big MP\%modname%_%modversion%_MPMaps.big>> "%mydocs%\%userdataleaf%\Mods\%modname%\%modname%_%modversion%.skudef"
	if exist "%mydocs%\%userdataleaf%\Mods\%modname%\BonusContent\%modname%_%modversion%_BonusMaps.big" echo add-big BonusContent\%modname%_%modversion%_BonusMaps.big>> "%mydocs%\%userdataleaf%\Mods\%modname%\%modname%_%modversion%.skudef"
)

:eof