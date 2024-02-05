TARGET = Main
TEXSRC = $(TARGET).tex

all: $(TARGET).pdf

$(TARGET).pdf: $(TEXSRC) Bibliography.bib
	pdflatex $(TEXSRC)
	bibtex $(TARGET)
	pdflatex $(TEXSRC)
	pdflatex $(TEXSRC)

clean:
	rm -f *.aux *.bbl *.blg *.log *.out *.pdf *.gz

.PHONY: all clean
