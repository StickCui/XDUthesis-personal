%%
%% This is file 'XDUthesis.cls',
%% the Xidian University thesis template,
%% witch made by Stick Cui.
%% 
%% Copyright (C) 2015 by Stick Cui <Stick_Cui@163.com>
%% 
%% This file may be distributed and/or modified under the
%% conditions of the LaTeX Project Public License, either version 1.3c
%% of this license or (at your option) any later version.
%% The latest version of this license is in:
%% 
%% http://www.latex-project.org/lppl.txt
%% 
%% and version 1.3c or later is part of all distributions of LaTeX
%% version 2008/05/04 or later.
%% 

\NeedsTeXFormat{LaTeX2e}[1999/12/01]
\ProvidesClass{XDUthesis}[2015/12/02 0.1 Xidian University Thesis Template]
\LoadClass[cs4size,a4paper,UTF8]{ctexbook}[2015/05/16]

\def\XDUthesis{X\kern -.1667em\lower .5ex\hbox {D}\kern -.125emU\textit{thesis}{}}
%------------------------功能类包的引用---------------------------%
\RequirePackage{ifxetex}
\RequirePackage{xcolor}
\RequirePackage[T1]{fontenc}
\RequirePackage{amsmath,amssymb}
\RequirePackage{graphicx}
\RequirePackage[amsmath,thmmarks,hyperref]{ntheorem}%
\RequirePackage[numbers,super,square,sort&compress]{natbib}
\RequirePackage[toc,page,title,titletoc,header]{appendix}
\RequirePackage{listings}%代码环境
\RequirePackage{CJKfntef}%下划线
\RequirePackage{longtable,multirow,hhline,tabularx,array,makecell,diagbox,colortbl,booktabs}
\RequirePackage[labelformat=simple,skip=10pt]{subcaption}%图表标题间隔修改
\newcommand{\PreserveBackslash}[1]{\let\temp=\\#1\let\\=\temp}
\newcolumntype{C}[1]{>{\PreserveBackslash\centering}p{#1}}
\newcolumntype{R}[1]{>{\PreserveBackslash\raggedleft}p{#1}}
\newcolumntype{L}[1]{>{\PreserveBackslash\raggedright}p{#1}}
\RequirePackage[bookmarks=true,%
    linkcolor=black,%
    citecolor=black,%
    unicode=true,%
    colorlinks=true,%
    pdfborder=001,%
    linkcolor=black,%
    citecolor=black,%
    urlcolor=black,
    bookmarksnumbered=true%标签显示章节编号
]{hyperref}
%-----------------------------页面设置-------------------------------%
\RequirePackage[a4paper,left=3cm,right=2cm,top=3cm,bottom=2cm]{geometry}
\RequirePackage{setspace}
\setstretch{1.5}%设置行距1.5倍
%------------------------------头设置--------------------------------%
\ctexset{
 chapter/beforeskip = {20pt},
 chapter/titleformat = {\zihao{3}\heiti\centering},%单纯的format不管用
 chapter/nameformat = {\zihao{3}\heiti\centering},
 section/format = {\zihao{4}\songti\centering},
 subsection/format = {\zihao{-4}\songti}
}

\renewcommand\theequation{\ifnum \c@chapter>\z@ \thechapter-\fi\@arabic\c@equation}
\renewcommand{\thesubfigure}{(\alph{subfigure})}
\renewcommand{\thesubtable}{(\alph{subtable})}
\captionsetup{font={small}}%设置图标标题五号字

\theorembodyfont{\rmfamily\songti}
\theoremheaderfont{\rmfamily\heiti}

\def\XDU@define@term#1{
  \expandafter\gdef\csname #1\endcsname##1{%
    \expandafter\gdef\csname XDU@#1\endcsname{##1}}
  \csname #1\endcsname{}}

\XDU@define@term{title}
\XDU@define@term{author}
\XDU@define@term{septitleA}
\XDU@define@term{septitleB}
\XDU@define@term{schoolnumber}
\XDU@define@term{school}
\XDU@define@term{major}
\XDU@define@term{class}
\XDU@define@term{supervisor}

\XDU@define@term{thanksforname}
\XDU@define@term{subject}
\XDU@define@term{abstractname}
\XDU@define@term{enabstractname}

\def\XDU@parse@keywords#1{
  \expandafter\gdef\csname XDU@#1\endcsname{}
  \expandafter\gdef\csname #1\endcsname##1{
    \@for\reserved@a:=##1\do{
      \expandafter\ifx\csname XDU@#1\endcsname\@empty\else
        \expandafter\g@addto@macro\csname XDU@#1\endcsname{\ignorespaces\csname XDU@#1@separator\endcsname}
      \fi
      \expandafter\expandafter\expandafter\g@addto@macro%
        \expandafter\csname XDU@#1\expandafter\endcsname\expandafter{\reserved@a}}}}
\XDU@parse@keywords{keywords}
\XDU@parse@keywords{enkeywords}

%---------------------------页眉页脚设置------------------------------%

\RequirePackage{fancyhdr}
\setlength{\headheight}{15pt}
\fancypagestyle{plain}{%为了章首页
\fancyhf{}
\fancyhead[OC]{\zihao{5}\songti\leftmark} %奇数页，章标题
\fancyhead[OR]{\zihao{-5}\thepage}
\fancyhead[EC]{\zihao{5}\songti\XDU@title} %论文题目
\fancyhead[EL]{\zihao{-5}\thepage}
\renewcommand\headrulewidth{0.75pt}
\renewcommand{\footrulewidth}{0pt}}

\fancypagestyle{myheadings}{%为了摘要
\fancyhf{}
\fancyhead[C]{\zihao{5}\songti\XDU@abstractname}
\renewcommand{\headrulewidth}{0.75pt}
\renewcommand{\footrulewidth}{0pt}}
\fancypagestyle{headings}{%为了abstract
\fancyhf{}
\fancyhead[C]{\zihao{5}\songti\XDU@enabstractname}
\renewcommand{\headrulewidth}{0.75pt}
\renewcommand{\footrulewidth}{0pt}}

\def\ps@XDU@mulu{%
  \let\@oddhead\@empty%
  \let\@evenhead\@empty%
  \let\@oddfoot\@empty%
  \let\@evenfoot\@empty}

\fancypagestyle{XDU@mulu}{%为了目录
\fancyhf{}
\fancyhead[OC]{\zihao{5}\songti\leftmark}
\fancyhead[OR]{\zihao{-5}\thepage}
\fancyhead[EC]{\zihao{5}\songti\leftmark}
\fancyhead[EL]{\zihao{-5}\thepage}
\renewcommand{\headrulewidth}{0.75pt}
\renewcommand{\footrulewidth}{0pt}}

\renewcommand\frontmatter{%
  \if@openright\cleardoublepage\else\clearpage\fi
  \@mainmatterfalse
  \pagenumbering{Roman}
  \pagestyle{XDU@mulu}}

\def\ps@XDU@main{%
  \let\@oddhead\@empty%
  \let\@evenhead\@empty%
  \let\@oddfoot\@empty%
  \let\@evenfoot\@empty}

\fancypagestyle{XDU@main}{%为了主体
\fancyhf{}
\fancyhead[OC]{\zihao{5}\songti\leftmark} %奇数页，章标题\protect\chaptermark
\fancyhead[OR]{\zihao{-5}\thepage}
\fancyhead[EC]{\zihao{5}\songti\XDU@title} %论文题目
\fancyhead[EL]{\zihao{-5}\thepage}
\renewcommand\headrulewidth{0.75pt}}

\renewcommand\mainmatter{%
  \if@openright\cleardoublepage\else\clearpage\fi
  \@mainmattertrue
  \pagenumbering{arabic}
  \pagestyle{XDU@main}}
\newcommand\comtinuematter{%
  \if@openright\cleardoublepage\else\clearpage\fi
  \@mainmattertrue}
  
\def\XDU@textcircled#1{%
  \ifnum \value{#1} <10 \textcircled{\zihao{-6}\arabic{#1}}
  \else\ifnum \value{#1} <100 \textcircled{\zihao{7}\arabic{#1}}\fi
  \fi}
\renewcommand{\thefootnote}{\XDU@textcircled{footnote}}
\renewcommand{\thempfootnote}{\XDU@textcircled{mpfootnote}}

%-----------------关于摘要-----------------%
\newcommand{\chaptersize}[1][\zihao{3}]{#1}

\def\@abstract{}
\newbox\@abstract%
\setbox\@abstract\hbox{}%
\def\abstract{\bgroup\global\setbox\@abstract\vbox\bgroup\hsize\textwidth\leftskip0cm\rightskip0cm}%
\def\endabstract{\egroup\egroup}

\def\@enabstract{}
\newbox\@enabstract%
\setbox\@enabstract\hbox{}%
\def\enabstract{\bgroup\global\setbox\@enabstract\vbox\bgroup\hsize\textwidth\leftskip0cm\rightskip0cm}%
\def\endenabstract{\egroup\egroup}

\def\make@abstract{%
\cleardoublepage%
\pagenumbering{roman}
\thispagestyle{myheadings}
\phantomsection%生成该页的链接
%\addcontentsline{toc}{chapter}{\XDU@abstractname}%目录中不需要
\vspace*{2em}
\centerline{\heiti\chaptersize\XDU@abstractname}\vskip5pt\par%
\vspace*{2em}
\noindent\usebox\@abstract\par%
\par\vspace*{2em}\noindent{\heiti\zihao{-4}{\XDU@keywordsname：\XDU@keywords}}%
\vspace*{1em}%
\cleardoublepage%
\thispagestyle{headings}
\phantomsection%生成该页的链接
%\addcontentsline{toc}{chapter}{\XDU@enabstractname}%目录中不需要
\vspace*{2em}
\centerline{\textbf{\chaptersize\XDU@enabstractname}}\vskip5pt\par%
\vspace*{2em}
\noindent\usebox\@enabstract\par%
\par\vspace*{2em}\noindent{\bf\zihao{-4}\XDU@enkeywordsname:~\XDU@enkeywords}%
\vspace*{1em}%
\newpage
}

%----------------------重新定义maketitle----------------------%
\def\maketitle{
\begin{titlepage}
\begin{flushright}
\begin{tabular}{c L{2cm}}
\textbf{\songti\zihao{-4}\XDU@classname} & \uline{~\textbf{\songti\zihao{-4}\XDU@class}\quad~}\\
%\cline{2-2}
\textbf{\songti\zihao{-4}\XDU@schoolnumbername} & \uline{~\textbf{\songti\zihao{-4}\XDU@schoolnumber}\quad~}\\
%\cline{2-2}
\end{tabular}
\end{flushright}
\centering\includegraphics[width=0.5\textwidth]{./Figure/xidian.pdf}

\vspace*{4em}

\begin{center}
\centering\heiti{\zihao{0}\XDU@subject}
\end{center}

\vspace*{5em}

\begin{center}
\includegraphics[width=0.25\textwidth]{./Figure/logo.pdf}
\end{center}

\vspace*{4em}

\begin{center}
\begin{tabular}{c C{6.5cm}}
\textbf{\songti\zihao{3}\XDU@titlename} & \heiti\zihao{3}\XDU@septitleA\\
\cline{2-2}
 & \\
 & \heiti\zihao{3}\XDU@septitleB\\
\cline{2-2}
 & \\
\textbf{\songti\zihao{3}\XDU@schoolname} & \songti{\zihao{-3}\XDU@school}\\
\cline{2-2}
 & \\
\textbf{\songti\zihao{3}\XDU@majorname} & \songti{\zihao{-3}\XDU@major}\\
\cline{2-2}
 &\\
\textbf{\songti\zihao{3}\XDU@authorname} & \songti{\zihao{-3}\XDU@author}\\
\cline{2-2}
 &\\
\textbf{\songti\zihao{3}\XDU@supervisorname} & \songti{\zihao{-3}\XDU@supervisor}\\
\cline{2-2}
\cline{2-2}
\end{tabular}
\end{center}

\end{titlepage}

\pagestyle{empty}
\cleardoublepage

\begin{center}
\songti\textbf{\zihao{1}\XDU@declarename}
\end{center}

\vspace*{3em}

\songti{\zihao{4}\XDU@declaretext}

\vspace*{8em}

{\songti\zihao{4}论文作者：\CJKunderline{\phantom{\qquad~空~格~啊~}}（签字）\quad 时间：\@date

指导教师已阅：\CJKunderline{\phantom{~空~格~啊~}}（签字）\quad 时间：\@date}

\make@abstract%

\frontmatter
\tableofcontents%
\mainmatter
}

%----------------------代码环境设置----------------------%
\ifxetex
  \lstset{
   showstringspaces=false,
   showspaces=false,
   tabsize=4,
   frame=lines,
   basicstyle = \XDU@codebasicfont,
   keywordstyle = \color{XDU@keywordcolor}\bfseries,
   stringstyle = \color{XDU@stringcolor}\ttfamily,
   commentstyle = \color{XDU@commentcolor}\rmfamily\itshape,
   identifierstyle=,
   columns = flexible,
   numbers = left,
   numberstyle = \footnotesize
  }
\else
  \lstset{
   showstringspaces=false,
   showspaces=false,
   tabsize=4,
   frame=lines,
   basicstyle = \XDU@codebasicfont,
   keywordstyle = \color{XDU@keywordcolor}\bfseries,
   stringstyle = \color{XDU@stringcolor}\ttfamily,
   commentstyle = \color{XDU@commentcolor}\rmfamily\itshape,
   identifierstyle=,
   columns = flexible,
   numbers = left,
   numberstyle = \footnotesize,
   extendedchars = false,
   escapechar = `
  }
\fi
\ifxetex
  \lstdefinestyle{nonumbers}
  {
   showstringspaces=false,
   showspaces=false,
   tabsize=4,
   frame=lines,
   basicstyle = \XDU@codebasicfont,
   keywordstyle = \color{XDU@keywordcolor}\bfseries,
   stringstyle = \color{XDU@stringcolor}\ttfamily,
   commentstyle = \color{XDU@commentcolor}\rmfamily\itshape,
   identifierstyle=,
   columns = flexible,
   numbers = none,
   numberstyle = \footnotesize
  }
\else
  \lstdefinestyle{nonumbers}
  {
   showstringspaces=false,
   showspaces=false,
   tabsize=4,
   frame=lines,
   basicstyle = \XDU@codebasicfont,
   keywordstyle = \color{XDU@keywordcolor}\bfseries,
   stringstyle = \color{XDU@stringcolor}\ttfamily,
   commentstyle = \color{XDU@commentcolor}\rmfamily\itshape,
   identifierstyle=,
   columns = flexible,
   numbers = none,
   numberstyle = \footnotesize,
   extendedchars = false,
   escapechar = `
  }
\fi

%----------------------定义致谢环境----------------------%
\newenvironment{thanksfor}{\backmatter
\chapter{\XDU@thanksforname}}{\comtinuematter}

\def\XDU@setpdf@keywords{
	\hypersetup{
		pdfkeywords={\XDU@keywords}
	}
}
\AtBeginDocument{
\hypersetup{
    pdftitle={\XDU@title},
    pdfauthor={\XDU@author},%
	pdfsubject={\XDU@subject},
	pdfcreator={\XDU@author},
    pdfproducer={XDUthesis}
}
}
\AtEndOfClass{\input{XDUthesis.cfg}}

\endinput