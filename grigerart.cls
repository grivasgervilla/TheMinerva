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

\InputIfFileExists{font.cfg}{}{}

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
\setuptodonotes{linecolor = lightgray, bordercolor = lightgray, backgroundcolor = white, figcolor = white, size = \footnotesize}

\tikzset{notestyleraw/.append style={rounded corners = 0pt}}


% theorems

\RequirePackage{amsthm}
\RequirePackage{thmbox}
\RequirePackage{letltxmacro}

\thmboxoptions{
  style=S,
  underline=false,
  bodystyle=\normalfont\noindent,
  headstyle=\normalfont\bfseries#1 #2 ,
  titlestyle=\normalfont\bfseries : #1
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
\allsectionsfont{\normalfont\normalsize\bfseries}

% appendices

\RequirePackage[page, toc, titletoc, title]{appendix}
