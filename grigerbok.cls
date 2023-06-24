\NeedsTeXFormat{LaTeX2e}
\ProvidesClass{grigerbok}[2021/11/26 Griger's class for books or thesis.]

% package options
\DeclareOption*{\PassOptionsToClass{\CurrentOption}{book}}
\DeclareOption{spanish}{
  \PassOptionsToPackage{\CurrentOption}{griger}
}
\DeclareOption{english}{
  \PassOptionsToPackage{\CurrentOption}{griger}
}
\ProcessOptions\relax

\LoadClass{book}

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

% fonts and symbols
\InputIfFileExists{font.cfg}{}{}

% margins
\usepackage[top=2.54cm, bottom=2.54cm, left=2.54cm, right=2.54cm]{geometry}


% Own packages
\RequirePackage{griger} % Common class configuration.
\RequirePackage{grigerthm} % Theorems configuration.

