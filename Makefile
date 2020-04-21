.PHONY: phony

PANDOCFLAGS =\
	--pdf-engine=xelatex \
	--from=markdown \
	--template letter.tex

all: phony out/letter.pdf

out/%.pdf: %.md  Makefile letter.tex | out
	pandoc $< -o $@ $(PANDOCFLAGS)

out:
	mkdir ./out

clean: phony
	rm -rf ./out
