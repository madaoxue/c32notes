SOURCES=slides intro install readfile graphs script numsum inference rmarkdown tidying case1 datetime miscellanea functions vecmat
RNW=$(SOURCES:=.Rnw)
all: slides.pdf
	evince slides.pdf&
slides.pdf: $(RNW)
	perl rnw2tex.pl slides
