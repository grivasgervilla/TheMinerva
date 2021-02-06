\NeedsTeXFormat{LaTeX2e}
\ProvidesClass{grigerart}[2020/03/12 Griger's class for articles.]


% pictures and colors
\RequirePackage[rgb]{xcolor}
\RequirePackage{tikz}
\RequirePackage{calculator}

% package options

\DeclareOption*{\PassOptionsToClass{\CurrentOption}{article}}
\ProcessOptions\relax

\RequirePackage{kvoptions}
\DeclareStringOption[0]{hue}
\DeclareStringOption[0.3]{sdrawing}
\DeclareStringOption[1]{bdrawing}
\DeclareStringOption[0.3]{stext}
\DeclareStringOption[0.4]{btext}
\DeclareStringOption[1]{sline}
\DeclareStringOption[0.5]{bline}
\ProcessKeyvalOptions*

\LoadClass{article}

% bibliography
\RequirePackage[%
backend=bibtex,
bibstyle=numeric,
citestyle=numeric-comp,
sorting=nyt,
sortcites=true,
isbn=false,
url=false,
doi=false,
eprint=false]{biblatex}

\AtEveryBibitem{%
  \clearlist{language}%
}

% fonts and symbols

\RequirePackage{unicode-math}
\setmainfont[Numbers={OldStyle}]{STIXTwoText}[
Path=/usr/local/share/fonts/s/,
Extension={.otf},
UprightFont={*_Regular},
BoldFont={*_Bold},
ItalicFont={*_Italic},
BoldItalicFont={*_BoldItalic}
]
\setmathfont{STIXTwoMath_Regular.otf}[
Path=/usr/local/share/fonts/s/
]
\setmonofont{Fira Code}[Contextuals=Alternate, Scale = 0.9]
% \setmathfont{STIX2Math.otf}[
%         SizeFeatures={
%             {Size=6-},
%             {Size=5-6,Font=STIX2Math.otf,Style=MathScript},
%             {Size= -5,Font=STIX2Math.otf,Style=MathScriptScript}
%         }]

\newcommand{\blacksquare}{\mdlgblksquare}
\newcommand{\square}{\mdlgwhtsquare}

% palette

\COPY{\grigerart@hue}{\H}
\COPY{\grigerart@sdrawing}{\sdrawing}
\COPY{\grigerart@bdrawing}{\bdrawing}
\COPY{\grigerart@stext}{\stext}
\COPY{\grigerart@btext}{\btext}
\COPY{\grigerart@sline}{\sline}
\COPY{\grigerart@bline}{\bline}
\foreach \i in {0,...,359}{
  \ADD{\H}{\i}{\hue}
  \MODULO{\hue}{360}{\normhue}
  \xglobal\definecolor{c\i}{Hsb}{\normhue,1,1}
  \xglobal\definecolor{l\i}{Hsb}{\normhue,\sline,\bline}
  \xglobal\definecolor{d\i}{Hsb}{\normhue,\sdrawing,\bdrawing}
  \xglobal\definecolor{t\i}{Hsb}{\normhue,\stext,\btext}
}

% links

\RequirePackage{hyperref}
\makeatletter
\AtBeginDocument{
  \hypersetup{
    pdftitle = {\@title},
    pdfauthor = {\@author}
  }
}
\makeatother

\hypersetup{
    colorlinks = true,
    breaklinks = true,
    allcolors = black,
    linktoc = all
}

% todonotes

\RequirePackage{todonotes}
\setuptodonotes{linecolor = black, bordercolor = black, backgroundcolor = white, figcolor = white, size = \footnotesize}

\tikzset{notestyleraw/.append style={rounded corners = 0pt}}


% theorems

\RequirePackage{amsthm}
\RequirePackage{thmbox}
\RequirePackage{letltxmacro}

\thmboxoptions{
  style=S,
  underline=false,
  bodystyle=\normalfont\noindent,
  headstyle=\normalfont#1 #2 ,
  titlestyle=\normalfont : #1
}

\renewcommand{\proofname}{Proof}

\renewenvironment{proof}
{
  \small
  \proofname:
}
{\hfill \scriptsize$\square$\vspace{1em}}

% TOC
\RequirePackage[titles]{tocloft}
\renewcommand{\cftsecfont}{}
\renewcommand{\cftsecpagefont}{}

% tables

\RequirePackage{booktabs}

% enumitem

\RequirePackage{enumitem}

% title

\RequirePackage{etoolbox}
\makeatletter
\patchcmd{\@maketitle}% <cmd>
  {\@title}% <search>
  {\scshape\@title \\ \color{black}\rule{\textwidth}{1pt}}% <replace>
  {}{}% <success><failure>
\makeatother

% sections

\RequirePackage{sectsty}
\allsectionsfont{\normalfont\normalsize\scshape}

% appendices

\RequirePackage[page, toc, titletoc, title]{appendix}
