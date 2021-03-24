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
| Zeit | 120934 | UTC-Zeit, ohne Berücksichtigung von Sommer- und Winterzeit, sowie Zeitverschiebung im Format HMMSS oder HHMMSS |
| Datum | 21220 | Datum, übermittelt durch GPS-Modul im Format TMMYY oder TTMMYY|
| Lange | 48.6564 | Breitengrad angegeben in Grad, wenn südlich vom Äquator, dann negative Werte |
| Breite | 9.4543 | Längengrad angegeben in Grad, wenn westlich vom Nullmeridian, dann negative Werte |
| Geschwindigkeit Fahrrad | 17.96| Geschwindigkeit des Fahrrads in km/h, wird aus Angaben des GPS-Moduls bestimmt |
| Geschwindigkeit KFZ | | Berechung bisher noch nicht funktionsfähig |
| Lange KFZ | | Berechnung bisher nocht nicht funktionsfähig |
| checksumme | 23890867 | Berechnung erfolgt, um Dopplungen bei Überholvorgängen zu verhindern |


## Überholvorgänge mit Adressen

Adressen werden über die API von opencage (https://opencagedata.com/)  aus den GPS-Koordinaten bestimmt.

| Spaltenname | Beispieldaten | Spalteninhalt |
| --- | --- | --- |
| Number | 5 | Nummer des Überholvorgangs |
| Distance | 164.507 | Gemessener Abstand in Zentimeter - Durchschnitsswert der gemessenen Abstandswerte während sich das Auto links neben dem Fahrrad befindet - dabei ist der Abstand zwischen Fahrradmitte und Hauptfläche des Autos angegeben |
| LAT | 48.6799 | Breitengrad angegeben in Grad, wenn südlich vom Äquator, dann negative Werte |
| LON | 9.11712 | Längengrad angegeben in Grad, wenn westlich vom Nullmeridian, dann negative Werte |
| LAT_corrected |  | korrigierter Breitengrad (Vgl. LAT) |
| LON_corrected |  | korrigierter Längengrad (Vgl. LON) |
| speed | | bisher enthalten, Default-Wert steht auf 0, noch nicht vollständig implementiert|
| date | 270820 | Datum im Format DDMMYY oder DMMYY|
| date_format | 2020-08-27 | YYYY-MM-DD |
| time | 45553 | UTC-Uhrzeit im Format HMMSS oder HHMMSS |
| time_format | 04:55:13 | UTC-Uhrzeit im Format HH:MM:SS |
| country | Deutschland | Land abgefragt über die API von opencage |
| state | Baden-Württemberg | Bundesland oder in anderen Ländern Vergleichbares, abgefragt über die API von opencage |
| county | Landkreis Esslingen | Landkreis oder in anderen Ländern Vergleichbares, abgefragt über die API von opencage |
| suburb | Degerloch | Teilort abgefragt über die API von opencage, zur genauen Unterscheidung der Adresse in großen Städten |
| citytown | Stuttgart | Stadt abgefragt über die API von opencage |
| postcode | 70771 | Postleitzahl abgefragt über die API von opencage |
| roadname | Azenbergstraße | Straßenname abgefragt über die API von opencage |
| roadtype | residential | Straßenkategorie abgefragt über die API von opencage - Definition von openstreetmaps |
| oneway | yes | Einbahnstraße abgefragt über die API von opencage |
| maxspeed | 40 | maximal erlaubte Geschwindigkeit abgefragt über die API von opencage |
| speedin | km/h | Einheit für die maximal erlaubte Geschwindigkeit abgefragt über die API von opencage |
| lanes | 2 | Zahl der Spuren der entsprechenden Straße abgefragt über die API von opencage |
| bikespeed | 16.678 | Geschwindigkeit des Fahrradfahrers in km/h | 