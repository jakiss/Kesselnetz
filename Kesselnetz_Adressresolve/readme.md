# Eingabe

Eingabe ist die CSV-Datei mit den Überholvorgängen und den GPS-Daten.
Aktuell ist die Spaltenreihenfolge von Bedeutung.

# Verwendete Software

Die Abfrage der Adressen erfolgt über die API von opencage, welche in einem R-Skript mit Hilfe von: (https://docs.ropensci.org/opencage/) bzw. (https://github.com/juliusgh/opencage) 
ausgeführt wird.

# Ausgabe

Ausgegeben werden die Daten als CSV-Datei, wobei jetzt aus den GPS-Daten Adressen generiert werden und die entsprechenden Informationen über die Straßen abgefragt werden. 
Zudem werden Datum und Uhrzeit in ein interpretierbares Format übersetzt.