# Stelle für Datenübergabe

## Daten aus der Kesselbox

Die Daten aus der Kesselbox heißen messdatenX.txt, wobei X eine fortlaufende natürliche Zahl ist.
GPS-Daten liegen im GPRMC-Format vor, wie sie durch das GPS-Modul übermittelt werden.
Es werden keine Überschriften verwendet.

| Spalteninhalt | Beispieldaten | Zweck der Daten |
|---|---|---|
| Zeit in Sekunden seit Systemstart | 158.689 | Genaue Bestimmung der Überholvorgänge |
| Messwert vorderer Ultraschallsensor in Zentimeter | 12050.34 | Bestimmung der Überholvorgänge |
| Messwert hinterer Ultraschallsensor in Zentimeter | 145.65 | Bestimmung der Überholvorgänge |


## Überholvorgänge

enthalten in erkannte.csv

Die Daten enthalten alle durch die Auswertungssoftware erkannten Überholvorgänge mit den entsprechenden Daten bezüglich Ort und Datum.
Bisher ist die Reihenfolge der Spalten noch für die folgende Software von Bedeutung.

| Spaltenname | Beispieldaten | Spalteninhalt |
| --- | --- | --- |
| Abstand | 156.43 | gemessener Abstand in Zentimeter - Durchschnittswert der gemessenen Abstandswerte während sich das Auto links neben dem Fahrrad befindet  - dabei ist der Abstand zwischen Fahrradmitte und Hauptfläche des Autos angegeben |
| Zeit |
| Datum |
| Lange |
| Breite |
| Geschwindigkeit Fahrrad |
| Geschwindigkeit KFZ |
| Lange KFZ |
| checksumme |


## Überholvorgänge mit Adressen
