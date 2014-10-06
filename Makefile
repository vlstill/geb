ALL=$(wildcard *.tex)

all:	$(ALL:.tex=.pdf)

clean:
	rubber --clean *.tex

%.pdf:	%.tex
	rubber --pdf -Wall $<
