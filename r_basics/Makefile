QMD_FILES := $(wildcard *.qmd)

all:
	make _book/index.html

_book/index.html: $(QMD_FILES)
	quarto render .

clean:
	rm -Rf _book _freeze .quarto