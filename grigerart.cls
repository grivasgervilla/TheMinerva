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

% todonotes

\RequirePackage{todonotes}
\setuptodonotes{linecolor = lightgray, bordercolor = lightgray, backgroundcolor = white, figcolor = white, size = \footnotesize}

\tikzset{notestyleraw/.append style={rounded corners = 0pt}}

% Own Packages

\RequirePackage{griger} % Common class configuration.
\RequirePackage{grigerthm} % Theorem configuration.

% TOC
\RequirePackage[titles]{tocloft}
\renewcommand{\cftsecfont}{}
\renewcommand{\cftsecpagefont}{}

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

% appendices
\RequirePackage[page, toc, titletoc, title]{appendix}
