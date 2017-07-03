.SUFFIXES: .dvi .pdf

FILE=essrc2017

all: $(FILE).pdf
$(FILE).pdf: $(FILE).dvi
$(FILE).dvi: $(FILE).tex

.tex.dvi:
	platex $<

.dvi.pdf:
	dvipdfmx $<

clean:
	rm -f $(FILE).dvi $(FILE).log $(FILE).pdf

distclean: clean
	rm -f $(FILE).aux
