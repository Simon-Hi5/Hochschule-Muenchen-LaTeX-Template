# -------- Config --------
MAIN ?= $(basename $(firstword $(wildcard *.tex)))
TEX  := $(MAIN).tex
PDF  := $(MAIN).pdf

LATEX    := pdflatex -synctex=1 -interaction=nonstopmode
BIBER    := biber
GLOSSARY := makeglossaries
TEXTIDOTE:= textidote

CONTENT_DIR := content

# -------- Targets --------
.PHONY: build pdf clean report text

build: pdf clean

# Generate PDF with bibliography, glossary, and table of contents
pdf:
	$(LATEX) $(TEX)
	$(BIBER) $(MAIN)
	$(GLOSSARY) $(MAIN)
	$(LATEX) $(TEX)
	$(LATEX) $(TEX)

# Clean up auxiliary files
clean:
	rm -f *.aux *.dvi *.log *.lot *.lol *.lof *.nls *.ilg *.nlo *.idx *.out *.toc *.ist *.glo *.blg *.acn *.bbl *.bcf *.run.xml *.synctex.gz *.gls *.alg *.glg *.acr *.loa
