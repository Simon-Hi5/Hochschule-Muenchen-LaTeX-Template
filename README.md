[![Deutsch](https://img.shields.io/badge/DE-Deutsch-lightgrey?style=for-the-badge&logo=google-translate&logoColor=lightgrey)](https://github.com/Simon-Hi5/Hochschule-Muenchen-LaTeX-Template)&emsp;
[![English](https://img.shields.io/badge/EN-English-0A84FF?style=for-the-badge&logo=google-translate&logoColor=0A84FF)](https://github.com/Simon-Hi5/Hochschule-Muenchen-LaTeX-Template/tree/english)

# LaTeX Template for Theses at HM Hochschule München University of Applied Sciences

An easy-to-use, modular LaTeX template for seminar papers, bachelor and master theses tailored to conventions commonly used at Hochschule München. This repository contains a complete example project, ready to open on Overleaf or compile locally.

[![View PDF](https://img.shields.io/badge/View_PDF-Thesis_Template-red?style=for-the-badge&logo=readdotcv&logoColor=red)](Thesis-Template.pdf)

## Highlights

- Modular structure: separate files for frontmatter, chapters, configuration, and backmatter.
- Bibliography support with BibLaTeX and Biber.
- Support for figures, tables, algorithms/pseudocode, code listings, abbreviations/glossaries, and appendices.
- A Makefile for an easy build workflow.
- VS Code configuration (extensions and settings) for building PDF, formatting, linting, and spell checking

## Quick Start

Open the project in [Overleaf](https://www.overleaf.com/read/sgmwpkppjwvh#91c355). Make sure to log in or create a free Overleaf account first, as you won’t be able to copy the project otherwise. Click on `Menu → Copy Project` in the top left to create your own copy of the project. You can then start working right away. No local setup required. Depending on the size of the project, the free Overleaf version may not be sufficient.

[![Overleaf](https://img.shields.io/badge/Open_in-Overleaf-47A141?style=for-the-badge&logo=overleaf)](https://www.overleaf.com/read/sgmwpkppjwvh#91c355)

Or build locally, which is recommended for offline work. See [local setup](#local-setup) below.

## Project Structure

```
├── Thesis-Template.tex      # Main entry file (includes config and content)
├── makefile                 # Convenience wrapper for build steps
│
├── config/                  # Configuration files
│   ├── packages.tex         # Package imports
│   ├── settings.tex         # Settings and styling
│   ├── abbreviations.tex    # Glossary/abbreviations definitions
│   └── literature.bib       # BibLaTeX bibliography file
│
├── frontmatter/             # Modular front matter
│   ├── titlepage.tex
│   ├── abstract.tex
│   ├── acknowledgments.tex
│   └── confidentiality.tex
│
├── chapters/                # Main content chapters
│   ├── 01_introduction.tex
│   ├── 02_background.tex
│   ├── ...
│   └── 06_conclusion.tex
│
├── backmatter/              # Modular back matter
│   ├── appendix.tex
│   └── declaration.tex
│
├── figures/                 # Images, logos, and other assets
│
└── .vscode/                 # VS Code configuration for consistent editing
    ├── extensions.json      # Recommended extensions for LaTeX development
    └── settings.json        # Editor settings (e.g., formatting, linting)
```

When adding new TeX files, include them in `Thesis-Template.tex` using `\input{path/to/file.tex}`.

## Usage Examples

- See the example content in `chapters/` for usage examples, including how to add and reference figures, tables, algorithms, code listings, and other common elements.
- Define bibliographic entries in `config/literature.bib`.
- Define abbreviations in `config/abbreviations.tex`.

## Local Setup

### Requirements

For the local setup, Linux (Debian/Ubuntu) is recommended. You can install all necessary packages with:

```
sudo apt-get install -y make texlive texlive-latex-extra texlive-extra-utils texlive-science biber chktex
```

This command installs:

- TeX Live: LaTeX distribution
- Biber: Bibliography handling with BibLaTeX
- make: Automates the build process
- latexindent: Formats LaTeX source code nicely
- chktex: Checks for typographic and other LaTeX issues

[Visual Studio Code (VS Code)](https://code.visualstudio.com/) is recommended as the editor, as all necessary extensions and settings for formatting, linting, and spell checking are already configured in the `.vscode` folder. This includes the configuration for the [LaTeX Workshop](https://marketplace.visualstudio.com/items?itemName=James-Yu.latex-workshop) extension and English spell checking with [LTeX](https://marketplace.visualstudio.com/items?itemName=valentjn.vscode-ltex). The settings define a complete build process and automate formatting as well as linting.

### Build PDF

To build the final PDF, simply run:

```
make
```

This will execute the following sequence:

1. `pdflatex -synctex=1 -interaction=nonstopmode -file-line-error Thesis-Template.tex`
2. `biber Thesis-Template`
3. `makeglossaries Thesis-Template`
4. `pdflatex -synctex=1 -interaction=nonstopmode Thesis-Template.tex`
5. `pdflatex -synctex=1 -interaction=nonstopmode Thesis-Template.tex`

## Contributing

This repository is a personal template. Contributions (bug reports, small fixes, suggestions) are welcome via issues or pull requests.

## Disclaimer

This LaTeX template is a private development and not an official template of HM Hochschule München University of Applied Sciences. It is published under the MIT License. The HM Hochschule München University of Applied Sciences logo included in this repository is protected by copyright and is the property of the university. It is not covered by the MIT License of this project. All rights to the logo (including copyright, trademark, and usage rights) remain exclusively with HM Hochschule München University of Applied Sciences. Use of the logo in academic work (e.g., theses) is generally permitted, but users themselves are responsible for ensuring lawful usage.
