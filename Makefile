.PHONY: manual r_basics

all: manual r_basics join

manual:
	quarto render manual --to html

## R basics tutorial
r_basics:
	quarto render r_basics/

## joining manual, r_basics and practical qmds
join:
	mkdir -p _build
	cp -r manual/_site/* _build/
	cp -r r_basics/_book _build/r_basics
	# qmd_downloads: mv qmds to qmd folder in _slides
	cp -r manual/practicals/ _build/qmd/
	cd _build/qmd; \
	tree . -P "*.qmd" -H "." --noreport --charset utf-8 \
			-T "Quarto files for tutorial sessions" > index.html

install_requirements:
	Rscript -e 'options(repos = c(CRAN = "https://cran.uni-muenster.de"))' \
			-e ' install.packages(c("bslib","rmarkdown", "knitr", "tidyverse", "webexercises", "praise"))'

clean:
	rm -Rf _build
	rm -Rf r_basics/_book r_basics/_freeze r_basics/.quarto
	rm -Rf manual/_site manual/_freeze manual/.quarto
