cls
author:StickCui
echo off
title XDUthesis
:STARTS
cls
echo.         XDUthesis Windows CMD 工具
echo.
echo. ==============================================
echo. 
echo. 1. 生成模板类型文件以及模板说明文档
echo.
echo. 2. 生成 Demo 示例文档
echo.
echo. 3. 清理中间文件，退出
echo.
echo. ==============================================
:CHO
set /p choice=请选择要进行的操作，Enter确定：
if /i "%choice%"=="1" goto THEMEMANUAL
if /i "%choice%"=="2" goto DEMO
if /i "%choice%"=="3" goto DELETE
echo 选择无效，请重新输入
echo.
goto CHO
:THEMEMANUAL
xelatex XDUthesis.dtx
makeindex -s gind.ist -o XDUthesis.ind XDUthesis.idx
makeindex -s gglo.ist -o XDUthesis.gls XDUthesis.glo
xelatex XDUthesis.dtx
xelatex XDUthesis.dtx
goto STARTS
:DEMO
xelatex -synctex=1 -interaction=nonstopmode Demo
bibtex Demo
xelatex -synctex=1 -interaction=nonstopmode Demo
xelatex -synctex=1 -interaction=nonstopmode Demo
goto STARTS
:DELETE
del  *.toc /s
del  *.bbl /s
del  *.blg /s
del  *.out  /s
del  *.aux  /s
del  *.log  /s
del  *.bak  /s
del  *.thm  /s
del  *.synctex.gz /s
del  *.fdb_latexmk /s
del  *.fls /s
del  *.glo /s
del  *.gls /s
del  *.idx /s
del  *.ilg /s
del  *.ind /s
del  *.nav /s
del  *.snm /s
del  *.ins /s
del  *.xdv /s