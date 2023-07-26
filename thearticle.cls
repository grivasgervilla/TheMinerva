\NeedsTeXFormat{LaTeX2e}
\ProvidesClass{thearticle}[2023/07/26 Minerva project's article class.]


% pictures and colors
\RequirePackage[rgb]{xcolor}
\RequirePackage{tikz}
\RequirePackage{calculator}

% class options
\DeclareOption*{\PassOptionsToClass{\CurrentOption}{article}}
\DeclareOption{spanish}{
  \PassOptionsToPackage{\CurrentOption}{thebasis}
}
\DeclareOption{english}{
  \PassOptionsToPackage{\CurrentOption}{thebasis}
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
\RequirePackage{thebasis} % Common class configuration.
\RequirePackage{thetheorems} % Theorem configuration.

% TOC
\RequirePackage[titles]{tocloft}
\renewcommand{\cftsecfont}{\sffamily}
\renewcommand{\cftsecpagefont}{\sffamily}
\renewcommand{\cftsubsecfont}{\sffamily}
\renewcommand{\cftsubsecpagefont}{\sffamily}
\renewcommand{\cftsubsubsecfont}{\sffamily}
\renewcommand{\cftsubsubsecpagefont}{\sffamily}
\renewcommand{\cftsubsecdotsep}{\cftnodots}
\renewcommand{\cftsubsubsecdotsep}{\cftnodots}


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
    {\large\bfseries\sffamily\scshape \@title \par}%
    \vskip 1em%
    {\rule{\textwidth}{0.5pt}}%
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
