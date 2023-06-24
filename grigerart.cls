\NeedsTeXFormat{LaTeX2e}
\ProvidesClass{grigerart}[2020/03/12 Griger's class for articles.]


% pictures and colors
\RequirePackage[rgb]{xcolor}
\RequirePackage{tikz}
\RequirePackage{calculator}

% class options
\DeclareOption*{\PassOptionsToClass{\CurrentOption}{article}}
\DeclareOption{spanish}{
  \PassOptionsToPackage{\CurrentOption}{griger}
}
\DeclareOption{english}{
  \PassOptionsToPackage{\CurrentOption}{griger}
}
\ProcessOptions\relax

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
date=year,
eprint=false,
maxbibnames=99]{biblatex}

\AtEveryBibitem{%
  \clearlist{language}%
}

% todonotes
\RequirePackage{todonotes}
\setuptodonotes{linecolor = lightgray, bordercolor = lightgray, backgroundcolor = white, figcolor = white, size = \footnotesize}

\tikzset{notestyleraw/.append style={rounded corners = 0pt}}

% Own Packages
\RequirePackage{griger} % Common class configuration.
\RequirePackage{grigerthm} % Theorem configuration.

% TOC
\RequirePackage[titles]{tocloft}
\renewcommand{\cftsecfont}{\sffamily}
\renewcommand{\cftsecpagefont}{\sffamily}

% enumitem

\RequirePackage{enumitem}

% margins
\usepackage[top=2.54cm, bottom=2.54cm, left=2.54cm, right=2.54cm]{geometry}

%page numbers
\let\oldthepage\thepage
\renewcommand*\thepage{\sffamily \oldthepage}

% titlepage

\makeatletter
\def\@maketitle{%
  \begin{center}
    {\large\bfseries\sffamily \@title \par}%
    \vskip 1em%
    {\color{blue}\rule{\textwidth}{1pt}}%
    \vskip 1em%
    {\normalsize\bfseries\sffamily\@author \par}%
    {\normalsize\bfseries\sffamily\@date \par}%
  \end{center}%
  \par
  \vskip 1em%
}
\makeatother

% appendices
\RequirePackage[page, toc, titletoc, title]{appendix}
