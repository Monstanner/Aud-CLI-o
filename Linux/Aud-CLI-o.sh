#!/bin/bash

echo ---------------------------------------------------
echo Aud-CLI-o v.1.0 20211009 by Monstanner
echo ---------------------------------------------------

cd #Hier bitte den Pfad eingeben, wo das Lied gespeichert werden soll.

#!/bin/bash

PS3='In welchen Format soll das Lied heruntergeladen werden? '
options=("MP3 Download" "AAC Download" "FLAC Download" "M4A Download" "OPUS Download" "VORBIS Download" "WAV Download" "Über" "Beenden")
select opt in "${options[@]}"
do
  case $opt in
          "MP3 Download")
              echo ---------------------------------------------------
              echo Bitte füge den Link zu dem Lied ein Strg / Ctrl + Shift + V oder Rechtsklick + Einfügen und bestätige dann mit Enter.
              echo ---------------------------------------------------
              while read INPUT
                do
                  echo Wird heruntergeladen...
                  youtube-dl -xo "%(title)s.%(ext)s" --audio-format mp3 --audio-quality 0 "$INPUT"
              break
              done
              exit
              ;;
          "AAC Download")
              echo ---------------------------------------------------
              echo Bitte füge den Link zu dem Lied ein Strg / Ctrl + Shift + V oder Rechtsklick + Einfügen und bestätige dann mit Enter.
              echo ---------------------------------------------------
              while read INPUT
                do
                echo Wird heruntergeladen...
                youtube-dl -xo "%(title)s.%(ext)s" --audio-format aac --audio-quality 0 "$INPUT"
              break
              done
              exit
              ;;
          "FLAC Download")
              echo ---------------------------------------------------
              echo Bitte füge den Link zu dem Lied ein Strg / Ctrl + Shift + V oder Rechtsklick + Einfügen und bestätige dann mit Enter.
              echo ---------------------------------------------------
              while read INPUT
                do
                echo Wird heruntergeladen...
                youtube-dl -xo "%(title)s.%(ext)s" --audio-format flac --audio-quality 0 "$INPUT"
              break
              done
              exit
              ;;
          "M4A Download")
              echo ---------------------------------------------------
              echo Bitte füge den Link zu dem Lied ein Strg / Ctrl + Shift + V oder Rechtsklick + Einfügen und bestätige dann mit Enter.
              echo ---------------------------------------------------
              while read INPUT
                do
                echo Wird heruntergeladen...
                youtube-dl -xo "%(title)s.%(ext)s" --audio-format m4a --audio-quality 0 "$INPUT"
              break
              done
              exit
              ;;
          "OPUS Download")
              echo ---------------------------------------------------
              echo Bitte füge den Link zu dem Lied ein Strg / Ctrl + Shift + V oder Rechtsklick + Einfügen und bestätige dann mit Enter.
              echo ---------------------------------------------------
              while read INPUT
                do
                echo Wird heruntergeladen...
                youtube-dl -xo "%(title)s.%(ext)s" --audio-format opus --audio-quality 0 "$INPUT"
              break
              done
              exit
              ;;
          "VORBIS Download")
              echo ---------------------------------------------------
              echo Bitte füge den Link zu dem Lied ein Strg / Ctrl + Shift + V oder Rechtsklick + Einfügen und bestätige dann mit Enter.
              echo ---------------------------------------------------
              while read INPUT
                do
                echo Wird heruntergeladen...
                youtube-dl -xo "%(title)s.%(ext)s" --audio-format vorbis --audio-quality 0 "$INPUT"
              break
              done
              exit
              ;;
          "WAV Download")
              echo ---------------------------------------------------
              echo Bitte füge den Link zu dem Lied ein Strg / Ctrl + Shift + V oder Rechtsklick + Einfügen und bestätige dann mit Enter.
              echo ---------------------------------------------------
              while read INPUT
                do
                echo Wird heruntergeladen...
                youtube-dl -xo "%(title)s.%(ext)s" --audio-format wav --audio-quality 0 "$INPUT"
              break
              done
              exit
              ;;
          "Über")
              echo ---------------------------------------------------
              echo Aud-CLI-o ist ein Terminal Skript und wurde von Monstanner erstellt.
              echo Aud-CLI-o gibt es für GNU/Linux und Windows.
              echo Aktuelle Version: 1.0 20211009
              echo Link zu YouTube-DL MP3: www.github.com/Monstanner/YouTube-DL-MP3
              echo Fork von YouTube-DL MP3 v.1.2 20210919
              echo ---------------------------------------------------
              ;;
          "Beenden")
              exit
              ;;
       *) echo Keine bekannte Option. Bitte wähle eine Zahl zwischen 1 bis 9 aus.;;
  esac
done
exit
