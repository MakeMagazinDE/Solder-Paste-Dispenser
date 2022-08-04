![GitHub Logo](http://www.heise.de/make/icons/make_logo.png)

Maker Media GmbH

![Aufmacher](https://github.com/MakeMagazinDE/Solder-Paste-Dispenser/blob/main/cnc1610_s.JPG)

# Solder-Paste-Dispenser

### Umbau einer Mini-CNC-Fräse zu einem Lötpasten-Dispenser für SMD-Bestückung

### von Carsten Meyer

**Teure Edelstahl-Pastenschablonen und die unvermeidliche Sauerei beim Aufragen erspart man sich mit unserem DIY-Dispenser: So macht SMD-Bestücken wieder Spaß!**

Wer als Maker nicht nur Einzelstücke, sondern auch mal eine Kleinserie auflegt, kommt um einen unbeliebten Arbeitschritt nicht herum: Das Auftragen der SMD-Lötpaste mit Edelstahl-Schablone und Spachtel endet regelmäßig in einer krassen Sauerei – von den Kosten für die (möglicherweise nur wenige Male benutzten) Schablone ganz abgesehen. In unserer Make-Werkstatt stand seit vielen Monaten eine kleine Billig-CNC-Fräse namens CNC1610 herum, die wegen des eiernden Spindelmotors und der eher labilen Konstruktion niemand mehr ernsthaft benutzen wollte. Das brachte uns auf die Idee, statt des Motors eine Lötpasten-Dosierspritze einzuspannen, so dass der Pastenauftrag programmgesteuert erfolgen kann.

Material:

* Mini-CNC-Fräse, z.B. CNC1610 (oder ähnlich, gern auch größer; es sind auch Chassis für leichte Laser-Gravierer geeignet, da keine großen Kräfte aufgewendet werden)
* Dispenser AD-982
* Netzteil 12V/3A
* Ikea-Leselampe
* Stahlblech 1mm, 20 x 20 cm
* Selbstklebende Schaumstoff-Matte (2mm stark) als Platinen-Unterlage
* 3 Mikroschalter, Miniaturausführung
* Neodym-Magnete zur Platinen-Fixierung
* Druckluft-Stecker mit Verschraubung für 6mm-Schläuche (der dem AD-982 beiliegende Druckluft-Stecker ist mit europäischen Kompressoren nicht kompatibel)

Zur Kompilierung ist die kostenlose [Delphi-Community-Edition von Embarcadero](https://www.embarcadero.com/de/products/delphi/starter/free-download) erforderlich. Zusätzlich muss in der IDE die [TComPort-Komponente](https://sourceforge.net/projects/comport/) installiert werden, über die die Software zur Kommunikation mit dem USB-Seriell-Chip CH340 auf der Steuerungsplatine der Fräse zugreift.

Wer keine eigenen Anpassungen an die Software benötigt, kann auch das fertig kompilierte *Dispenser.exe* (Windows) herunterladen. Die Voreinstellungs-Datei *Dispenser.INI* muss im gleichen Verzeichnis wie das Programm liegen, ansonsten ist keine Installation erforderlich.

![Screenshot](https://github.com/MakeMagazinDE/Solder-Paste-Dispenser/blob/main/dispenser_screen.png)
