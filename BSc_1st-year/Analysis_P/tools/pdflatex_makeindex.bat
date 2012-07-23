rem build PDF file from given tex file and running makeindex

rem ***** make sure to be in the right directory
cd "%~dp1"

rem ***** name of tex file without ".tex" 
set texSource=%~n1
 
rem ***** run pdflatex 
pdflatex -synctex=1 -interaction=nonstopmode --src-specials "%texSource%.tex"
 
rem ***** build glossar
makeindex "%texSource%.idx"