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

% todonotes
\RequirePackage{todonotes}
\setuptodonotes{linecolor = lightgray, bordercolor = lightgray, backgroundcolor = white, figcolor = white, size = \footnotesize}

\tikzset{notestyleraw/.append style={rounded corners = 0pt}}

% Own Packages
\RequirePackage{thebasis} % Common class configuration.



% margins and indentation
\usepackage[top=2.54cm, bottom=2.54cm, left=1.91cm, right=1.91cm]{geometry}
%\setlength{\parindent}{0pt}

%page numbers
\let\oldthepage\thepage
\renewcommand*\thepage{\sffamily \oldthepage}

% titlepage

\makeatletter
\def\@maketitle{%
  \begin{center}
    {\huge\bfseries\sffamily \@title \par}%
    \vskip 1em%
    {\Large\bfseries\sffamily\@author \par}%
    {\Large\bfseries\sffamily\@date \par}%
  \end{center}%
  \par
  \vskip 1em%
}
\makeatother

% appendices
\RequirePackage[page, toc, titletoc, title]{appendix}
