template:
	xelatex XDUthesis.dtx
	makeindex -s gind.ist -o XDUthesis.ind XDUthesis.idx
	makeindex -s gglo.ist -o XDUthesis.gls XDUthesis.glo
	xelatex XDUthesis.dtx
	xelatex XDUthesis.dtx

xelatex:
	xelatex -synctex=1 -interaction=nonstopmode Demo
	bibtex Demo
	xelatex -synctex=1 -interaction=nonstopmode Demo
	xelatex -synctex=1 -interaction=nonstopmode Demo

latexmk:
	latexmk -xelatex -interaction=nonstopmode Demo

clean:
	rm -f *.toc *.bbl *.blg *.out *.aux *.log *.bak *.thm *.synctex.gz *.fdb_latexmk *.fls *.glo *.gls *.idx *.ilg *.ind *.ins *.xdv
