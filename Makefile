MAIN = pre

all: build clean

build:
	rubber --module xelatex --jobname letter $(MAIN).tex

clean:
	rm -f *.log *.toc *.aux *.nav *.out *.blg *.snm *.vrb
