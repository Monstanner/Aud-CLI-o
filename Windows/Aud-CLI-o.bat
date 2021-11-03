@ECHO off
cls
:start
@ECHO OFF
ECHO ---------------------------------------------------
ECHO Aud-CLI-o v. 1.0 20211103 by Monstanner
ECHO ---------------------------------------------------
ECHO 1. MP3 Download
ECHO 2. AAC Download
ECHO 3. FLAC Download
ECHO 4. M4A Download
ECHO 5. OPUS Download
ECHO 6. VORBIS Download
ECHO 7. WAV Download
ECHO 8. Ueber
ECHO 9. Beenden

set choice=
set /p choice=In welchen Format soll das Lied heruntergeladen werden?
if not '%choice%'=='' set choice=%choice:~0,1%
if '%choice%'=='1' goto 1
if '%choice%'=='2' goto 2
if '%choice%'=='3' goto 3
if '%choice%'=='4' goto 4
if '%choice%'=='5' goto 5
if '%choice%'=='6' goto 6
if '%choice%'=='7' goto 7
if '%choice%'=='8' goto 8
if '%choice%'=='9' goto 9
ECHO "%choice%" ist keine bekannte Option. Bitte eine Zahl zwischen 1 bis 9 oder einen Buchstaben von A bis F eingeben.
ECHO.
goto start
:1
@ECHO OFF
SET /P URL="[Fuege den Link zu einem Lied ein. (Rechtsklick > Einfuegen > Enter)] "
ECHO.
youtube-dl -xo "#Bitte die ReadMe.txt lesen./%%(title)s.%%(ext)s" --audio-format mp3 --audio-quality 0 -i --ignore-config --hls-prefer-native %URL%
ECHO.
PAUSE
EXIT
:2
@ECHO OFF
SET /P URL="[Fuege den Link zu einem Lied ein. (Rechtsklick > Einfuegen > Enter)] "
ECHO.
youtube-dl -xo "#Bitte die ReadMe.txt lesen./%%(title)s.%%(ext)s" --audio-format aac --audio-quality 0 -i --ignore-config --hls-prefer-native %URL%
ECHO.
PAUSE
EXIT
:3
@ECHO OFF
SET /P URL="[Fuege den Link zu einem Lied ein. (Rechtsklick > Einfuegen > Enter)] "
ECHO.
youtube-dl -xo "#Bitte die ReadMe.txt lesen./%%(title)s.%%(ext)s" --audio-format flac --audio-quality 0 -i --ignore-config --hls-prefer-native %URL%
ECHO.
PAUSE
EXIT
:4
@ECHO OFF
SET /P URL="[Fuege den Link zu einem Lied ein. (Rechtsklick > Einfuegen > Enter)] "
ECHO.
youtube-dl -xo "#Bitte die ReadMe.txt lesen./%%(title)s.%%(ext)s" --audio-format m4a --audio-quality 0 -i --ignore-config --hls-prefer-native %URL%
ECHO.
PAUSE
EXIT
:5
@ECHO OFF
SET /P URL="[Fuege den Link zu einem Lied ein. (Rechtsklick > Einfuegen > Enter)] "
ECHO.
youtube-dl -xo "#Bitte die ReadMe.txt lesen./%%(title)s.%%(ext)s" --audio-format opus --audio-quality 0 -i --ignore-config --hls-prefer-native %URL%
ECHO.
PAUSE
EXIT
:6
@ECHO OFF
SET /P URL="[Fuege den Link zu einem Lied ein. (Rechtsklick > Einfuegen > Enter)] "
ECHO.
youtube-dl -xo "#Bitte die ReadMe.txt lesen./%%(title)s.%%(ext)s" --audio-format vorbis --audio-quality 0 -i --ignore-config --hls-prefer-native %URL%
ECHO.
PAUSE
EXIT
:7
@ECHO OFF
SET /P URL="[Fuege den Link zu einem Lied ein. (Rechtsklick > Einfuegen > Enter)] "
ECHO.
youtube-dl -xo "#Bitte die ReadMe.txt lesen./%%(title)s.%%(ext)s" --audio-format wav --audio-quality 0 -i --ignore-config --hls-prefer-native %URL%
ECHO.
PAUSE
EXIT
:8
ECHO ---------------------------------------------------
ECHO Aud-CLI-o ist ein Terminal Skript und wurde von Monstanner erstellt.
ECHO Aud-CLI-o gibt es fuer GNU/Linux und Windows.
ECHO Aktuelle Version: 1.0 20211103
ECHO Link zu Aud-CLI-o: www.github.com/Monstanner/Aud-CLI-o
ECHO Fork von YouTube-DL MP3 v.1.2 20210919
ECHO ---------------------------------------------------
goto start
:9
goto end
:end
pause
