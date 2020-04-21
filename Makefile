.PHONY: phony

TEMPLATE=letter.latex

PANDOCFLAGS =\
	--pdf-engine=xelatex \
	--from=markdown \
	--template $(TEMPLATE)

all: phony out/letter.pdf

out/%.pdf: %.md Makefile $(TEMPLATE) | out
	pandoc $< -o $@ $(PANDOCFLAGS)

out:
	mkdir ./out

clean: phony
	rm -rf ./out
