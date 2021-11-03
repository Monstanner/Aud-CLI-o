Bitte gebt, wo steht #Bitte die ReadMe.txt lesen., den Pfad ein, wo das Lied gespeichert werden soll.

Beispiel:

youtube-dl -xo "C:/Users/Test/Music/%%(titel)s.%%(ext)s" --audio-format mp3 --audio-quality 0 -i --ignore-config --hls-prefer-native %URL%

Wichtig ist hierbei, dass man den Backslash \ mit einem normalen Slash / ersetzt und dass der Pfad direkt an /%%(titel)s.%%(ext)s" anknüpft, wie im Beispiel gezeigt.

Ihr braucht neben youtube-dl noch libav, um in MP3 konvertieren zu können.

Dazu ladet Ihr Euch hier (http://builds.libav.org/windows/release-gpl/) libav-11.3-win32.7z für 32-Bit Systeme oder libav-11.3-win64.7z für 64-Bit Systeme herunter.
Dies gemacht, entpackt Ihr alles was in dem 7zip-Archiv ist in einen Ordner in welchen sich auch youtube-dl.exe befindet.
Im selben Ordner packt Ihr noch die YouTube-DL-MP3.bat. Von dieser könnt Ihr dann eine Verknüpfung auf dem Desktop anlegen und YouTube-DL für Lieder nutzen.
