pdf: accords.pdf

accords.pdf: accords.tex
	pdflatex accords.tex

view: accords.pdf
	xreader accords.pdf

clean:
	rm -f *.aux *.log
