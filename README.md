[![Deutsch](https://img.shields.io/badge/DE-Deutsch-0A84FF?style=for-the-badge&logo=google-translate&logoColor=0A84FF)](https://github.com/Simon-Hi5/Hochschule-Muenchen-LaTeX-Template)&emsp;
[![English](https://img.shields.io/badge/EN-English-lightgrey?style=for-the-badge&logo=google-translate&logoColor=lightgrey)](https://github.com/Simon-Hi5/Hochschule-Muenchen-LaTeX-Template/tree/english)

# LaTeX-Vorlage für Abschlussarbeiten an der Hochschule München

Eine einfach zu verwendende, modulare LaTeX-Vorlage für Seminararbeiten, Bachelor- und Masterarbeiten, angepasst an die an der Hochschule München üblichen Konventionen. Dieses Repository enthält ein komplettes Beispielprojekt, das direkt in Overleaf geöffnet oder lokal kompiliert werden kann.

[![View PDF](https://img.shields.io/badge/View-Thesis_Template-red?style=for-the-badge&logo=readdotcv&logoColor=red)](Thesis-Template.pdf)

## Highlights

- Modulare Struktur: separate Dateien für Frontmatter, Kapitel, Konfiguration und Backmatter.
- Vorkonfigurierte Bibliographie-Unterstützung mit BibLaTeX und Biber.
- Unterstützung für Abbildungen, Tabellen, Algorithmen/Pseudocode, Code-Listings, Abkürzungen/Glossare und Anhänge.
- Ein Makefile für einen einfachen Build-Workflow.

## Schnellstart

Öffne das Projekt in [Overleaf](https://www.overleaf.com/read/nrmrmjvwwhnv#ddfbfb). Klicke oben links auf `Menu → Copy Project`, um eine eigene Kopie des Projekts zu erstellen. Danach kannst du sofort mit deiner Arbeit beginnen. Keine lokale Einrichtung erforderlich. Je nach Projektgröße könnte die kostenlose Overleaf-Version eventuell nicht ausreichen.

[![Overleaf](https://img.shields.io/badge/Open_in-Overleaf-47A141?style=for-the-badge&logo=overleaf)](https://www.overleaf.com/read/nrmrmjvwwhnv#ddfbfb)

Oder kompiliere lokal, was für Offline-Arbeiten empfohlen wird. Siehe [lokale Einrichtung](#lokale-einrichtung) unten.

## Projektstruktur

```
├── Thesis-Template.tex     # Hauptdatei (beinhaltet Konfiguration und Inhalte)
├── makefile                # Komfortabler Wrapper für Build-Schritte
│
├── config/                 # Konfigurationsdateien
│ ├── packages.tex          # Paketimporte und allgemeine LaTeX-Einstellungen
│ ├── settings.tex          # Dokumentenspezifische Einstellungen (Titel, Autor, etc.)
│ ├── abbreviations.tex     # Glossar/Abkürzungsdefinitionen
│ └── literature.bib        # BibLaTeX-Bibliographie-Datei
│
├── frontmatter/            # Modulares Frontmatter
│ ├── titlepage.tex
│ ├── abstract.tex
│ ├── acknowledgments.tex
│ └── confidentiality.tex
│
├── chapters/               # Hauptkapitel
│ ├── 01_introduction.tex
│ ├── 02_background.tex
│ ├── ...
│ └── 06_conclusion.tex
│
├── backmatter/             # Anhänge und Erklärungen
│ ├── appendix.tex
│ └── declaration.tex
│
└── figures/                # Abbildungen, Logos und andere Assets
```

Beim Hinzufügen neuer TeX-Dateien binde sie in `Thesis-Template.tex` mit `\input{path/to/file.tex}` ein.

## Anwendungsbeispiele

- Siehe die Beispielinhalte in `chapters/` für Beispiele, wie Abbildungen, Tabellen, Algorithmen, Code-Listings und andere gängige Elemente hinzugefügt und referenziert werden.
- Bibliographieeinträge werden in `config/literature.bib` definiert.
- Abkürzungen werden in `config/abbreviations.tex` definiert.

## Lokale Einrichtung

### Voraussetzungen

- Eine TeX-Distribution (TeX Live empfohlen).
- Biber (für Bibliographie-Verarbeitung).
- make (optional, das Makefile bündelt die Build-Befehle).

Unter Linux (Debian/Ubuntu) können die Grundlagen mit folgendem Befehl installiert werden:

`sudo apt install texlive-extra biber make`

### PDF-Erstellung

1. `pdflatex -synctex=1 -interaction=nonstopmode Thesis-Template.tex`
2. `biber Thesis-Template`
3. `makeglossaries Thesis-Template`
4. `pdflatex -synctex=1 -interaction=nonstopmode Thesis-Template.tex`
5. `pdflatex -synctex=1 -interaction=nonstopmode Thesis-Template.tex`

Oder alternativ einfach folgenden Befehl ausführen:

`make`

### Fehlerbehebung

- Fehlende Pakete: Installiere die benötigten TeX-Pakete oder wechsle zu `texlive-full`.
- Bibliographie wird nicht aktualisiert: Stelle sicher, dass `biber Thesis-Template` ausgeführt wird (oder `make`).
- Glossar/Abkürzungen fehlen: Führe `makeglossaries Thesis-Template` aus und kompiliere erneut.

# Contributing

Dieses Repository ist ein persönliches Template. Beiträge (Bug-Reports, kleine Fixes, Vorschläge) sind über Issues oder Pull Requests willkommen.  
Bevor du größere Änderungen einreichst, eröffne bitte zuerst ein Issue, um den Vorschlag zu besprechen.

## Disclaimer

Dieses LaTeX-Template ist eine private Entwicklung und kein offizielles Template der Hochschule München. Es wird unter der MIT-Lizenz veröffentlicht. Das in diesem Repository enthaltene Logo der Hochschule München ist urheberrechtlich geschützt und Eigentum der Hochschule München. Es unterliegt nicht der MIT-Lizenz dieses Projekts. Alle Rechte am Logo (einschließlich Urheber-, Marken- und Nutzungsrechte) verbleiben ausschließlich bei der Hochschule München. Die Verwendung des Logos in wissenschaftlichen Arbeiten (z.B. Abschlussarbeiten) ist in der Regel gestattet, die Verantwortung für eine rechtmäßige Nutzung liegt jedoch bei den Anwender:innen selbst.
