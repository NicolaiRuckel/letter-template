MAIN = template/pre
OUTNAME = letter

all: build

build:
	rubber --module xelatex --jobname $(OUTNAME) $(MAIN).tex

clean:
	rm -f *.log *.toc *.aux *.nav *.out *.blg *.snm *.vrb $(OUTNAME).pdf
