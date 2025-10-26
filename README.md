[![Deutsch](https://img.shields.io/badge/DE-Deutsch-0A84FF?style=for-the-badge&logo=google-translate&logoColor=0A84FF)](https://github.com/Simon-Hi5/Hochschule-Muenchen-LaTeX-Template)&emsp;
[![English](https://img.shields.io/badge/EN-English-lightgrey?style=for-the-badge&logo=google-translate&logoColor=lightgrey)](https://github.com/Simon-Hi5/Hochschule-Muenchen-LaTeX-Template/tree/english)

# LaTeX-Vorlage für Abschlussarbeiten an der Hochschule München

Eine einfach zu verwendende, modulare LaTeX-Vorlage für Seminar-, Bachelor- und Masterarbeiten, die sich an den üblichen Konventionen der Hochschule München orientiert. Dieses Repository enthält ein komplettes Beispielprojekt, das direkt in Overleaf geöffnet oder lokal kompiliert werden kann.

[![PDF](https://img.shields.io/badge/View_PDF-Thesis_Template-red?style=for-the-badge&logo=readdotcv&logoColor=red)](Thesis-Template.pdf)

## Highlights

- Modulare Struktur: separate Dateien für Vorspann, Kapitel, Konfiguration und Schlussteil.
- Unterstützung für Literaturverwaltung mit BibLaTeX und Biber.
- Unterstützung für Abbildungen, Tabellen, Algorithmen/Pseudocode, Quellcode-Listings, Abkürzungs-/Glossarverzeichnisse und Anhänge.
- Ein Makefile für einen einfachen Build-Prozess.
- VS Code-Konfiguration (Erweiterungen und Einstellungen) für PDF-Erstellung, Formatierung, Linting und Rechtschreibprüfung.

## Schnellstart

Öffne das Projekt in [Overleaf](https://www.overleaf.com/read/nrmrmjvwwhnv#ddfbfb). Stelle sicher, dass du eingeloggt bist oder ein kostenloses Overleaf-Konto erstellt hast, da du das Projekt sonst nicht kopieren kannst. Klicke oben links auf `Menu → Copy Project`, um eine eigene Kopie des Projekts zu erstellen. Danach kannst du sofort loslegen. Es ist keine lokale Einrichtung erforderlich. Je nach Projektgröße reicht die kostenlose Overleaf-Version eventuell nicht aus.

[![Overleaf](https://img.shields.io/badge/Open_in-Overleaf-47A141?style=for-the-badge&logo=overleaf)](https://www.overleaf.com/read/nrmrmjvwwhnv#ddfbfb)

Alternativ kann das Projekt lokal erstellt werden, was für das Offline-Arbeiten empfohlen wird. Siehe Abschnitt [Lokale Einrichtung](#lokale-einrichtung).

## Projektstruktur

```
├── Thesis-Template.tex      # Haupteinstiegsdatei (lädt Konfiguration & Inhalte)
├── makefile                 # Hilfsskript für den Build-Prozess 
│
├── config/                  # Konfigurationsdateien
│   ├── packages.tex         # Paketimporte
│   ├── settings.tex         # Einstellungen & Layout
│   ├── abbreviations.tex    # Glossar-/Abkürzungsdefinitionen
│   └── literature.bib       # BibLaTeX-Bibliografiedatei
│
├── frontmatter/             # Modularer Vorspann
│   ├── titlepage.tex
│   ├── abstract.tex
│   ├── acknowledgments.tex
│   └── confidentiality.tex
│
├── chapters/                # Kapitel (Hauptinhalt)
│   ├── 01_introduction.tex
│   ├── 02_background.tex
│   ├── ...
│   └── 06_conclusion.tex
│
├── backmatter/              # Modularer Schlussteil
│   ├── appendix.tex
│   └── declaration.tex
│
├── figures/                 # Bilder, Logos und andere Ressourcen
│
└── .vscode/                 # VS Code-Konfiguration für konsistentes Editieren
    ├── extensions.json      # Empfohlene Erweiterungen für LaTeX-Entwicklung
    └── settings.json        # Editor-Einstellungen (z. B. Formatierung, Linting)
```

Neu hinzugefügte TeX-Dateien müssen in `Thesis-Template.tex` mit `\input{path/to/file.tex}` eingebunden werden.

## Anwendungsbeispiele

- Die Beispielinhalte in `chapters/` zeigen die Einbindung und Referenzierung von Abbildungen, Tabellen, Algorithmen, Quellcode-Listings und weiteren gängigen Elementen.
- Literaturangaben werden in `config/literature.bib` definiert.
- Abkürzungen werden in `config/abbreviations.tex` definiert.

## Lokale Einrichtung

### Voraussetzungen

Für die lokale Einrichtung wird Linux (Debian/Ubuntu) empfohlen. Alle benötigten Pakete können mit folgendem Befehl installiert werden:

```
sudo apt-get install -y make texlive texlive-latex-extra texlive-extra-utils texlive-science texlive-lang-german biber chktex
```

Dieser Befehl installiert:

- TeX Live: LaTeX-Distribution
- Biber: Literaturverwaltung mit BibLaTeX
- make: Automatisiert den Build-Prozess
- latexindent: Formatiert LaTeX-Quellcode ordentlich
- chktex: Überprüft auf typografische Fehler und sonstige LaTeX-Probleme

Als Editor wird [Visual Studio Code (VS Code)](https://code.visualstudio.com/) empfohlen, da alle notwendigen Erweiterungen und Einstellungen für Formatierung, Linting und Rechtschreibprüfung bereits im Ordner `.vscode` konfiguriert sind. Dies schließt die Konfiguration für die Erweiterung [LaTeX Workshop](https://marketplace.visualstudio.com/items?itemName=James-Yu.latex-workshop) und die deutsche Rechtschreibprüfung mit [LTeX](https://marketplace.visualstudio.com/items?itemName=valentjn.vscode-ltex) ein. Die Einstellungen definieren einen vollständigen Build-Prozess und automatisieren Formatierung sowie Linting.

### PDF erstellen

Zuerst muss das Repository heruntergeladen oder geklont werden. Führe anschließend den folgenden Befehl im Hauptverzeichnis des Projekts aus, um das PDF zu erstellen:

```
make
```

Dadurch werden folgende Schritte ausgeführt:

1. `pdflatex -synctex=1 -interaction=nonstopmode -file-line-error Thesis-Template.tex`
2. `biber Thesis-Template`
3. `makeglossaries Thesis-Template`
4. `pdflatex -synctex=1 -interaction=nonstopmode Thesis-Template.tex`
5. `pdflatex -synctex=1 -interaction=nonstopmode Thesis-Template.tex`

## Contributing

Dieses Repository ist ein persönliches Template. Beiträge (Fehlerberichte, Korrekturen, Vorschläge) sind über Issues oder Pull Requests willkommen.

## Disclaimer

Dieses LaTeX-Template ist eine private Entwicklung und kein offizielles Template der Hochschule München. Es wird unter der MIT-Lizenz veröffentlicht. Das in diesem Repository enthaltene Logo der Hochschule München ist urheberrechtlich geschützt und Eigentum der Hochschule München. Es unterliegt nicht der MIT-Lizenz dieses Projekts. Alle Rechte am Logo (einschließlich Urheber-, Marken- und Nutzungsrechte) verbleiben ausschließlich bei der Hochschule München. Die Verwendung des Logos in wissenschaftlichen Arbeiten (z.B. Abschlussarbeiten) ist in der Regel gestattet, die Verantwortung für eine rechtmäßige Nutzung liegt jedoch bei den Anwender:innen selbst.
