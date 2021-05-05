# Hardware

## Materialliste allgemein

| Komponentenname | Zahl pro Bausatz | Anmerkung |
| --- | --- | --- |
| Raspberry Pi Zero W | 1 | ohne vorgelötete Pins|
| Micro SD-Karte | 1 | mind. 16GB Class 10 |
| Buchsenleiste | 1 | 2x20 Pins 2,54mm RM |
| Steckerleiste | 1 | 2x20 Pins 2,54mm RM |
| Ultraschallsensoren | 2 | HC-SR04 |
| Widerstand | 2 | 510 Ohm |
| Widerstand | 2 | 1 kOhm |
| Widerstand | 1 | 4,7 kOhm |
| Widerstand | 3 | 100 Ohm |
| GPS-Modul | 1 | GY-GPS6MV2 mit Antenne |
| Temperatursensor | 1 | DS18B20 |
| Stiftleiste | 1 | 1x4 Pins RM 2,54 mm |
| LED | 3 | grün, rot, blau jeweils 5 mm |
| Powerbank | 1 | Kapazität von 5000 mAh empfohlen |


## Materialliste bei Montage in 3D-gedruckter Box (zusätzlich)

| Komponentenname | Zahl pro Bausatz | Anmerkung |
| --- | --- | --- |
| Akkus | 2 | 3,6V Wiederaufladbare Akkus 18650 (Flat-Top Li-Ion 3.6 V) |
| Akkuhalter | 1 | Passend für 2 Akkus 18650 |
| Micro-USB-Breakout-Board | 1 | |
| Steckerleiste | 1 | 1x5 Pin RM 2,54 mm |
| Batterielademodul | 1 | für Lithium Batterien 18650 (MakerHawk) |
| Steckerleiste | 1 | 1x6 Pin RM 2,54 mm |
| Wippschalter | 1 | |
| Schraubklemmblock | 2 | 2 polig RM 5,08 mm |
| Litze und Adernendhülsen | | Anschluss zwischen Schraubklemmblock und Schalter und Batteriehalter|

Powerbank wird nicht benötigt

# Montagereihenfolge

## allgemeine Montagereihenfolge

| Arbeitsschritt | zu verlötendes Bauteil |
| --- | --- |
| 1. | Wiederstände löten |
| 1.1 | 510 Ohm R2 und R4 |
| 1.2 | 1 kOhm R1 und R3 |
| 1.3 | 100 Ohm R5, R6 und R9 |
| 2. | LEDS löten, links grün, mitte rot, rechts blau |
| 3. | Buchsenleiste für Raspberry Pi anlöten, Raspberry Pi mit Steckerleiste versehen, Raspberry Pi erst zum Schluss aufstecken |
| 4. | Temperatursensor DS18B20 anlöten |
| 5. | GPS-Modul mit 4 Pin-Sitftleiste anlöten, Antenne befestigen | 
| 6. | Ultraschallsensoren anlöten |

## zusätzliche Schritte bei 3D-Druck-Box 

| Arbeitsschritt | zu verlötendes Bauteil |
| --- | --- |
| 1. | Batterielademodul mit 6-Pol-Stiftleiste verlöten |
| 2. | Micro-USB-Board mit 5-Pol-Stiftleiste verlöten |
| 3. | Schraubklemmenblock verlöten |
| 4. | Schalter an den rechten Schraubklemmenblock anschliessen |
| 5. | Batteriehalter an den linken Schraubklemmenblock anschliessen | 

# Software

| Arbeitsschritt | zu installierende Software-Komponente |
| --- | --- |
| 1. | Betriebssystem installieren - Raspbian wird mit Hilfe von Win32DiskImager auf die Micro-SD-Karte gespielt |
| 2. | Schnittstellen freigeben - in den Einstellungen werden I2C und die W-1 Schnittstellen freigegeben |
| 3. | Python-Code auf dem Raspberry Pi speichern |
| 4. | Test der Komponenten über die Testsoftware |
| 5. | Auto-Start definieren - in der Datei /etc/rc.local den Eintrag python3/Dateispeicherort/Dateiname & hinzufügen |