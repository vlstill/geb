ALL=$(wildcard *.tex)

all:	$(ALL:.tex=.pdf) all.pdf

clean:
	rubber --clean *.tex

%.pdf:	%.tex
	rubber --pdf -Wall $<

all.pdf : abstract6.pdf abstract7.pdf
	pdftk abstract6.pdf abstract7.pdf cat output all.pdf
