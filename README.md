[![Deutsch](https://img.shields.io/badge/DE-Deutsch-lightgrey?style=for-the-badge&logo=google-translate&logoColor=lightgrey)](https://github.com/Simon-Hi5/Hochschule-Muenchen-LaTeX-Template)&emsp;
[![English](https://img.shields.io/badge/EN-English-0A84FF?style=for-the-badge&logo=google-translate&logoColor=0A84FF)](https://github.com/Simon-Hi5/Hochschule-Muenchen-LaTeX-Template/tree/english)

# LaTeX Template for Theses at Munich University of Applied Sciences

An easy-to-use, modular LaTeX template for seminar papers, bachelor and master theses tailored to conventions commonly used at Hochschule München. This repository contains a complete example project, ready to open on Overleaf or compile locally.

[![View PDF](https://img.shields.io/badge/View-Thesis_Template-red?style=for-the-badge&logo=readdotcv&logoColor=red)](Thesis-Template.pdf)

## Highlights

- Modular structure: separate files for frontmatter, chapters, configuration and backmatter.
- Pre-configured bibliography support with BibLaTeX and Biber.
- Support for figures, tables, algorithms/pseudocode, code listings, abbreviations/glossaries and appendices.
- A Makefile for an easy build workflow.

## Quick Start

Open the project in [Overleaf](https://www.overleaf.com/read/nrmrmjvwwhnv#ddfbfb). Click on `Menu → Copy Project` in the top left to create your own copy of the project. You can then start working right away. No local setup required. Depending on the size of the project, the free Overleaf version may not be sufficient.

[![Overleaf](https://img.shields.io/badge/Open_in-Overleaf-47A141?style=for-the-badge&logo=overleaf)](https://www.overleaf.com/read/nrmrmjvwwhnv#ddfbfb)

Or build locally, which is recommended for offline work. See [local setup](#local-setup) below.

## Project Structure

```
├── Thesis-Template.tex      # Main entry file (includes config and content)
├── makefile                 # Convenience wrapper for build steps
│
├── config/                  # Configuration files
│   ├── packages.tex         # Package imports and general LaTeX settings
│   ├── settings.tex         # Document-specific settings (title, author, etc.)
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
├── backmatter/              # Appendices and declarations
│   ├── appendix.tex
│   └── declaration.tex
│
└── figures/                 # Images, logos, and other assets
```

When adding new TeX files, include them in `Thesis-Template.tex` using `\input{path/to/file.tex}`.

## Usage Examples

- See the example content in `chapters/` for usage examples, including how to add and reference figures, tables, algorithms, code listings, and other common elements.
- Define bibliographic entries in `config/literature.bib`.
- Define abbreviations in `config/abbreviations.tex`.

## Local Setup

### Requirements

- A TeX distribution (TeX Live recommended).
- Biber (for bibliography processing).
- make (optional, the Makefile wraps the build commands).

On Linux (Debian/Ubuntu) you can install the basics with:

`sudo apt install texlive-extra biber make`

### Build PDF

1. `pdflatex -synctex=1 -interaction=nonstopmode Thesis-Template.tex`
2. `biber Thesis-Template`
3. `makeglossaries Thesis-Template`
4. `pdflatex -synctex=1 -interaction=nonstopmode Thesis-Template.tex`
5. `pdflatex -synctex=1 -interaction=nonstopmode Thesis-Template.tex`

Or simply run:

`make`

### Troubleshooting

- Missing package errors: install the required TeX packages or switch to `texlive-full`.
- Bibliography not updated: ensure you run `biber Thesis-Template` (or run `make`).
- Glossary/abbreviations missing: run `makeglossaries Thesis-Template` and recompile.

## Contributing

This repository is a personal template. Contributions (bug reports, small fixes, suggestions) are welcome via issues or pull requests. Before submitting larger changes, open an issue to discuss the proposal.

## Disclaimer

This LaTeX template is a private development and not an official template of Munich University of Applied Sciences. It is published under the MIT License. The Munich University of Applied Sciences logo included in this repository is protected by copyright and is the property of the university. It is not covered by the MIT License of this project. All rights to the logo (including copyright, trademark, and usage rights) remain exclusively with Munich University of Applied Sciences. Use of the logo in academic work (e.g., theses) is generally permitted, but users themselves are responsible for ensuring lawful usage.
