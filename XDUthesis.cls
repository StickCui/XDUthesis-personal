%%
%% This is file `XDUthesis.cls',
%% generated with the docstrip utility.
%%
%% The original source files were:
%%
%% XDUthesis.dtx  (with options: `cls')
%% 
%% This is a generated file.
%% 
%% Copyright (C) 2015-2016 by Stick Cui <Stick_Cui@163.com>
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
%% To produce the documentation run the original source files ending with `.dtx'
%% through LaTeX.
%% 
\NeedsTeXFormat{LaTeX2e}[1999/12/01]
\ProvidesClass{XDUthesis}
[2016/05/18 0.1.6 Xidian University Thesis Template]
\hyphenation{XDU-Thesis}
\def\XDUthesis{X\kern -.1667em\lower .5ex\hbox {D}\kern -.125emU\textit{thesis}{}}
\def\version{0.1.6}

\newif\if@nologo \@nologofalse %默认使用校徽Logo
\newif\if@Fandol \@Fandolfalse %默认为Windows系统，使用华文中宋作为中易宋体的粗体，否则全部使用Fandol字体族
\newif\if@WordOneHalf \@WordOneHalffalse % 默认为LaTeX下的1.5倍行距

\DeclareOption{nologo}{\@nologotrue}
\DeclareOption{Fandol}{\@Fandoltrue}
\DeclareOption{WordOneHalf}{\@WordOneHalftrue}
\ProcessOptions\relax

\RequirePackage{ifthen}
\if@Fandol
 \LoadClass[cs4size,a4paper,UTF8,fontset=Fandol]{ctexbook}[2015/05/16]
 \setmainfont{Times New Roman}
\else
\LoadClass[cs4size,a4paper,UTF8]{ctexbook}[2015/05/16]
 \setCJKmainfont[BoldFont={STZhongsong},ItalicFont={KaiTi}]{SimSun}
 \setCJKsansfont{SimHei}
 \setCJKmonofont{FangSong}
 \setmainfont{Times New Roman}
 \setsansfont{Arial}
 \setmonofont{Courier New}
\fi
\RequirePackage{ifxetex}
\RequirePackage{xcolor}
\RequirePackage[T1]{fontenc}
\RequirePackage{amsmath,amssymb}
\RequirePackage{graphicx}
\RequirePackage[amsmath,thmmarks,hyperref]{ntheorem}
\RequirePackage[numbers,super,square,sort&compress]{natbib}
\RequirePackage[toc,page,title,titletoc,header]{appendix}
\RequirePackage{listings}
\RequirePackage{CJKfntef}
\RequirePackage{longtable,multirow,hhline,tabularx,array,
                makecell,diagbox,colortbl,booktabs}
\RequirePackage[labelsep=quad]{caption}[2011/11/10]
\RequirePackage[labelformat=simple,skip=10pt]{subcaption}
\newcommand{\PreserveBackslash}[1]{\let\temp=\\#1\let\\=\temp}
\newcolumntype{C}[1]{>{\PreserveBackslash\centering}p{#1}}
\newcolumntype{R}[1]{>{\PreserveBackslash\raggedleft}p{#1}}
\newcolumntype{L}[1]{>{\PreserveBackslash\raggedright}p{#1}}
\RequirePackage[bookmarks=true,
    linkcolor=black,
    citecolor=black,
    unicode=true,
    colorlinks=true,
    pdfborder=001,
    linkcolor=black,
    citecolor=black,
    urlcolor=black,
    bookmarksnumbered=true
]{hyperref}
\RequirePackage[a4paper,left=4cm,right=2cm,
               top=3cm,bottom=2cm]{geometry}
\RequirePackage{setspace}
\if@WordOneHalf
  \setstretch{1.62}%设置Word下的行距1.5倍
\else
  \setstretch{1.5}%设置行距1.5倍
\fi
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
\fancyhead[OC]{\zihao{5}\songti\leftmark} %奇数页，章标题
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


\RequirePackage{blindtext}
\@newctr{footnote}[page]
\@newctr{mpfootnote}[page]

\RequirePackage{pifont}
\renewcommand\thefootnote{\ding{\numexpr171+\value{footnote}}}
\renewcommand\thempfootnote{\ding{\numexpr171+\value{mpfootnote}}}
\ctexset{
 chapter/beforeskip = {20pt},
 chapter/format = {\zihao{3}\heiti\centering},%修正章节标题错误加粗问题
 section/format = {\zihao{4}\songti\centering},
 subsection/format = {\zihao{-4}\songti}
}
\RequirePackage{titletoc}
\titlecontents{chapter}[0pt]{\bfseries}%
{\thecontentslabel}%
    {\hspace*{0pt}}%
{\titlerule*[10bp]{\timesbd{.}}\timesbd{\contentspage}}

\renewcommand\theequation{\ifnum \c@chapter>\z@
  \thechapter-\fi\@arabic\c@equation}
\renewcommand{\thesubfigure}{(\alph{subfigure})}
\renewcommand{\thesubtable}{(\alph{subtable})}
\captionsetup{font={small}}%设置图表标题五号字
\renewcommand{\bibfont}{\small}%设置参考文献字体为五号字

\DeclareRobustCommand\onlinecite{\@onlinecite}
\def\@onlinecite#1{\begingroup\let\@cite\NAT@citenum\citep{#1}\endgroup}

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
        \expandafter\g@addto@macro\csname XDU@#1\endcsname{
        \ignorespaces\csname XDU@#1@separator\endcsname}
      \fi
      \expandafter\expandafter\expandafter\g@addto@macro%
        \expandafter\csname XDU@#1\expandafter
        \endcsname\expandafter{\reserved@a}}}}
\XDU@parse@keywords{keywords}
\XDU@parse@keywords{enkeywords}
\newcommand{\chaptersize}[1][\zihao{3}]{#1}

\long\@xp\def\@xp\collect@@body\@xp#\@xp1\@xp\end\@xp#\@xp2\@xp{%
  \collect@@body{#1}\end{#2}}
\long\@xp\def\@xp\push@begins\@xp#\@xp1\@xp\begin\@xp#\@xp2\@xp{%
  \push@begins{#1}\begin{#2}}
\long\@xp\def\@xp\addto@envbody\@xp#\@xp1\@xp{%
  \addto@envbody{#1}}
\newcommand{\XDU@@cabstract}[1]{\long\gdef\XDU@cabstract{#1}}
\newenvironment{abstract}{\collect@body\XDU@@cabstract}{}

\newcommand{\XDU@@eabstract}[1]{\long\gdef\XDU@eabstract{#1}}
\newenvironment{enabstract}{\collect@body\XDU@@eabstract}{}

\newfontfamily\enheiti{SimHei} % 新加字体族，用于修正封面页标题英文字体非黑体问题，感谢lanthree <https://github.com/lanthree>同学
\newfontfamily\timesbd{Times New Roman Bold} % 新加字体族，用于修正中文摘要关键词中，英文关键词未加粗问题，感谢lanthree <https://github.com/lanthree>同学
\def\make@abstract{%
\cleardoublepage%
\pagenumbering{roman}
\pagestyle{myheadings}
\phantomsection
\vspace*{2em}
\centerline{\heiti\chaptersize\XDU@abstractname}\vskip5pt\par%
\vspace*{2em}
\XDU@cabstract%
\par\vspace*{2em}\noindent{\heiti\zihao{-4}\timesbd{\XDU@keywordsname：\XDU@keywords}}%
\vspace*{1em}%
\cleardoublepage%
\pagestyle{headings}
\phantomsection
\vspace*{2em}
\centerline{\timesbd{\chaptersize\XDU@enabstractname}}\vskip5pt\par%
\vspace*{2em}
\XDU@eabstract%
\par\vspace*{2em}\noindent{\timesbd\zihao{-4}
    \XDU@enkeywordsname:~\XDU@enkeywords}%
\vspace*{1em}%
\cleardoublepage
}
\def\maketitle{
\begin{titlepage}
\begin{flushright}
\begin{tabular}{c L{2cm}}
\textbf{\zihao{-4}\XDU@classname} & \uline{~\timesbd{\zihao{-4}\XDU@class}\quad~}\\
\textbf{\zihao{-4}\XDU@schoolnumbername} & \uline{~\timesbd{\zihao{-4}\XDU@schoolnumber}\quad~}\\
\end{tabular}
\end{flushright}
\if@WordOneHalf
\if@nologo
  \vspace*{4cm}

  \vspace*{2em}

  \vspace*{1cm}

  \vspace*{3em}

  \vspace*{1cm}
\else
  \centering\includegraphics[width=0.5\textwidth]{./Figure/xidian.pdf}

  \vspace*{2em}

  \begin{center}
  {\centering\heiti{\zihao{0}\XDU@subject}}
  \end{center}

  \vspace*{3em}

  \begin{center}
  \includegraphics[width=0.25\textwidth]{./Figure/logo.pdf}
  \end{center}
\fi
\else
\if@nologo
  \vspace*{4cm}

  \vspace*{4em}

  \vspace*{1cm}

  \vspace*{5em}

  \vspace*{1cm}
\else
  \centering\includegraphics[width=0.5\textwidth]{./Figure/xidian.pdf}

  \vspace*{4em}

  \begin{center}
  {\centering\heiti{\zihao{0}\XDU@subject}}
  \end{center}

  \vspace*{5em}

  \begin{center}
  \includegraphics[width=0.25\textwidth]{./Figure/logo.pdf}
  \end{center}
\fi
\fi

\vspace*{4em}

\begin{center}
\begin{tabular}{c C{6.5cm}}
\textbf{\zihao{3}\XDU@titlename} & {\heiti\enheiti\zihao{3}\XDU@septitleA}\\
\cline{2-2}
 & \\
 & {\heiti\enheiti\zihao{3}\XDU@septitleB}\\
\cline{2-2}
 & \\
\textbf{\zihao{3}\XDU@schoolname} & {\zihao{-3}\XDU@school}\\
\cline{2-2}
 & \\
\textbf{\zihao{3}\XDU@majorname} & {\zihao{-3}\XDU@major}\\
\cline{2-2}
 &\\
\textbf{\zihao{3}\XDU@authorname} & {\zihao{-3}\XDU@author}\\
\cline{2-2}
 &\\
\textbf{\zihao{3}\XDU@supervisorname} & {\zihao{-3}\XDU@supervisor}\\
\cline{2-2}
\cline{2-2}
\end{tabular}
\end{center}

\end{titlepage}

\pagestyle{empty}
\cleardoublepage

\begin{center}
{\textbf{\zihao{1}\XDU@declarename}}
\end{center}

\vspace*{3em}

{\songti{\zihao{4}\XDU@declaretext}}

\vspace*{8em}

{\songti\zihao{4}\XDU@authornametitle\CJKunderline{\phantom{\qquad\qquad\qquad\quad}}\XDU@signedname\quad\XDU@timename\@date

\XDU@supervisorhasread\CJKunderline{\phantom{\qquad\qquad\quad}}\XDU@signedname\quad\XDU@timename\@date}

\make@abstract%

\frontmatter
\tableofcontents%
\mainmatter
}
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
%%
%% End of file `XDUthesis.cls'.
