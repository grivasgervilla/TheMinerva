\NeedsTeXFormat{LaTeX2e}
\ProvidesClass{thebook}[2021/11/26 Minerva project's book class.]

% package options
\DeclareOption*{\PassOptionsToClass{\CurrentOption}{book}}
\DeclareOption{spanish}{
  \PassOptionsToPackage{\CurrentOption}{thebasis}
}
\DeclareOption{english}{
  \PassOptionsToPackage{\CurrentOption}{thebasis}
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

% margins
\usepackage[top=2.54cm, bottom=2.54cm, left=2.54cm, right=2.54cm]{geometry}


% Own packages
\RequirePackage{thebasis} % Common class configuration.
\RequirePackage{thetheorems} % Theorems configuration.

