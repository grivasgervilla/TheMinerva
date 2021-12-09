\NeedsTeXFormat{LaTeX2e}
\ProvidesClass{grigerbok}[2021/11/26 Griger's class for books or thesis.]

% package options
\DeclareOption*{\PassOptionsToClass{\CurrentOption}{book}}
\DeclareOption{spanish}{
  \PassOptionsToPackage{\CurrentOption}{babel}
}
\ProcessOptions\relax

\LoadClass{book}

% language
\RequirePackage{babel}

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


% Own packages
\RequirePackage{griger} % Common class configuration.
\RequirePackage{grigerthm} % Theorems configuration.

