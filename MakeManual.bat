xelatex XDUthesis.dtx
makeindex -s gind.ist -o XDUthesis.ind XDUthesis.idx
makeindex -s gglo.ist -o XDUthesis.gls XDUthesis.glo
xelatex XDUthesis.dtx
xelatex XDUthesis.dtx