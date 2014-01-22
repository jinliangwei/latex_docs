
%.pdf: %.tex reference.bib
	latex $<
	bibtex $(*F)
	latex $<
	pdflatex $<
	rm -rf *.aux *.log *.nav *.out *.snm *.toc *.rvb *.bbl *.blg *.dvi

clean:
	rm -rf *.aux *.log *.nav *.out *.snm *.toc *.rvb *.bbl *.blg *.dvi

veryclean:
	rm -rf *.aux *.log *.nav *.out *.snm *.toc *.rvb *.bbl *.blg *.dvi *.pdf