[![Deutsch](https://img.shields.io/badge/DE-Deutsch-0A84FF?style=for-the-badge&logo=google-translate&logoColor=0A84FF)](https://github.com/Simon-Hi5/Hochschule-Muenchen-LaTeX-Template)&emsp;
[![English](https://img.shields.io/badge/EN-English-lightgrey?style=for-the-badge&logo=google-translate&logoColor=lightgrey)](https://github.com/Simon-Hi5/Hochschule-Muenchen-LaTeX-Template/tree/english)

# LaTeX-Vorlage für Abschlussarbeiten an der Hochschule München

Eine einfach zu verwendende, modulare LaTeX-Vorlage für Seminararbeiten, Bachelor- und Masterarbeiten, angepasst an die an der Hochschule München üblichen Konventionen. Dieses Repository enthält ein komplettes Beispielprojekt, das direkt in Overleaf geöffnet oder lokal kompiliert werden kann.

[![View PDF](https://img.shields.io/badge/View-Thesis_Template-red?style=for-the-badge&logo=readdotcv&logoColor=red)](Thesis-Template.pdf)

## Highlights

- Modulare Struktur: separate Dateien für Frontmatter, Kapitel, Konfiguration und Backmatter.
- Bibliographieunterstützung mit BibLaTeX und Biber.
- Unterstützung für Abbildungen, Tabellen, Algorithmen/Pseudocode, Code-Listings, Abkürzungen/Glossare und Anhänge.
- Ein Makefile für einen einfachen Build-Workflow.
- VS Code-Konfiguration (Erweiterungen und Einstellungen) für PDF-Erstellung, Formatierung, Linting und Rechtschreibprüfung.

## Schnellstart

Öffne das Projekt in [Overleaf](https://www.overleaf.com/read/nrmrmjvwwhnv#ddfbfb). Stelle sicher, dass du eingeloggt bist oder ein kostenloses Overleaf-Konto erstellt hast, da du das Projekt sonst nicht kopieren kannst. Klicke oben links auf `Menu → Copy Project`, um eine eigene Kopie des Projekts zu erstellen. Danach kannst du sofort loslegen. Keine lokale Einrichtung erforderlich. Je nach Projektgröße kann die kostenlose Overleaf-Version nicht ausreichen.

[![Overleaf](https://img.shields.io/badge/Open_in-Overleaf-47A141?style=for-the-badge&logo=overleaf)](https://www.overleaf.com/read/nrmrmjvwwhnv#ddfbfb)

Alternativ kann lokal gebaut werden, was für Offline-Arbeiten empfohlen wird. Siehe [Lokale Einrichtung](#lokale-einrichtung) unten.

## Projektstruktur

```
├── Thesis-Template.tex      # Haupteinstiegsdatei (beinhaltet Konfig & Inhalte)
├── makefile                 # Komfort-Skript für Build-Schritte
│
├── config/                  # Konfigurationsdateien
│   ├── packages.tex         # Paketimporte
│   ├── settings.tex         # Einstellungen & Layout
│   ├── abbreviations.tex    # Glossar-/Abkürzungsdefinitionen
│   └── literature.bib       # BibLaTeX-Bibliografiedatei
│
├── frontmatter/             # Modulares Frontmatter
│   ├── titlepage.tex
│   ├── abstract.tex
│   ├── acknowledgments.tex
│   └── confidentiality.tex
│
├── chapters/                # Hauptinhaltskapitel
│   ├── 01_introduction.tex
│   ├── 02_background.tex
│   ├── ...
│   └── 06_conclusion.tex
│
├── backmatter/              # Modulares Backmatter
│   ├── appendix.tex
│   └── declaration.tex
│
├── figures/                 # Bilder, Logos und andere Assets
│
├── .vscode/                 # VS Code-Konfiguration für konsistentes Editieren
│   ├── extensions.json      # Empfohlene Erweiterungen für LaTeX-Entwicklung
│   └── settings.json        # Editoreinstellungen (z. B. Formatierung, Linting)
│
└── .github/workflows/       # GitHub Actions für CI/CD
    └── build-pdf.yml        # Workflow zum automatischen PDF-Build
```

Wenn neue TeX-Dateien hinzugefügt werden, müssen sie in `Thesis-Template.tex` mit `\input{path/to/file.tex}` eingebunden werden.

## Anwendungsbeispiele

- Siehe die Beispielinhalte in `chapters/` für Anwendungsbeispiele, einschließlich der Einbindung und Referenzierung von Abbildungen, Tabellen, Algorithmen, Code-Listings und anderen gängigen Elementen.
- Definiere bibliographische Einträge in `config/literature.bib`.
- Definiere Abkürzungen in `config/abbreviations.tex`.

## Lokale Einrichtung

### Voraussetzungen

Für die lokale Einrichtung wird Linux (Debian/Ubuntu) empfohlen. Alle benötigten Pakete können mit folgendem Befehl installiert werden:

```
sudo apt-get install -y make texlive texlive-latex-extra texlive-extra-utils texlive-science texlive-lang-german biber chktex
```

Dieser Befehl installiert:

- TeX Live: LaTeX-Distribution
- Biber: Bibliographieverwaltung mit BibLaTeX
- make: Automatisiert den Build-Prozess
- latexindent: Formatiert LaTeX-Quellcode ordentlich
- chktex: Überprüft auf typografische und andere LaTeX-Probleme

Visual Studio Code (VS Code) wird als Editor empfohlen, da alle notwendigen Erweiterungen und Einstellungen für Formatierung, Linting und Rechtschreibprüfung bereits im Ordner `.vscode` vorkonfiguriert sind.

### PDF bauen

Zuerst muss das Repository heruntergeladen oder geklont werden. Anschließend führe den folgenden Befehl im Hauptverzeichnis des Projekts aus, um das finale PDF zu erstellen:

```
make
```

Dies führt folgende Schritte aus:

1. `pdflatex -synctex=1 -interaction=nonstopmode -file-line-error Thesis-Template.tex`
2. `biber Thesis-Template`
3. `makeglossaries Thesis-Template`
4. `pdflatex -synctex=1 -interaction=nonstopmode Thesis-Template.tex`
5. `pdflatex -synctex=1 -interaction=nonstopmode Thesis-Template.tex`

## Contributing

Dieses Repository ist ein persönliches Template. Beiträge (Fehlerberichte, Korrekturen, Vorschläge) sind über Issues oder Pull Requests willkommen.

## Disclaimer

Dieses LaTeX-Template ist eine private Entwicklung und kein offizielles Template der Hochschule München. Es wird unter der MIT-Lizenz veröffentlicht. Das in diesem Repository enthaltene Logo der Hochschule München ist urheberrechtlich geschützt und Eigentum der Hochschule München. Es unterliegt nicht der MIT-Lizenz dieses Projekts. Alle Rechte am Logo (einschließlich Urheber-, Marken- und Nutzungsrechte) verbleiben ausschließlich bei der Hochschule München. Die Verwendung des Logos in wissenschaftlichen Arbeiten (z.B. Abschlussarbeiten) ist in der Regel gestattet, die Verantwortung für eine rechtmäßige Nutzung liegt jedoch bei den Anwender:innen selbst.
