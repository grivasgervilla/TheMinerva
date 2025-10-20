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

% margins
\usepackage[top=2.54cm, bottom=2.54cm, left=1.91cm, right=1.91cm]{geometry}

% Own packages
\RequirePackage{thebasis} % Common class configuration.

% book specific style options
\titleformat{\chapter}{\Huge\bfseries\sffamily}{\thechapter}{1em}{}

\titleclass{\part}{top} % asegura que sea tratado como "top-level"
\titleformat{\part}[display]
  {\filcenter\Huge\bfseries\sffamily\scshape}
  {\thepart} % encabezado
  {20pt}               % espacio entre número y título
  {\Huge}              % formato del título
\titlespacing*{\part}{0pt}{*10}{*10}

\renewcommand{\cftpartfont}{\sffamily\scshape\bfseries}
 \cftpagenumbersoff{part}
\renewcommand{\cftchapfont}{\sffamily}
\renewcommand{\cftchappagefont}{\sffamily}

\RequirePackage{etoolbox}
\pretocmd{\part}{\cleardoublepage\thispagestyle{empty}}{}{}

