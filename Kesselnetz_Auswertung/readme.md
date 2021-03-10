# Eingabe

Es werden die durch die Kesselnetz aufgezeichneten Daten eingegeben (Vgl. Daten - messdatenX.txt).
Die Dateien müssen fortlaufend nummeriert sein.

# Verarbeitung

Die Dateien werden nacheinander eingelesen und es werden die Abstandswerte ausgewertet.
Lassen die Abstandswerte den Rückschluss zu, dass ein Überholvorgang stattgefunden hat, wird dieser zwischengespeichert.
Die Software wurde in R erstellt.

# Ausgabe
Die zuvor erkannten Überholvorgänge werden zusammen mit den GPS-Koordinaten in eine Datei mit dem Namen erkannte.csv (Vgl. Daten) geschrieben.


