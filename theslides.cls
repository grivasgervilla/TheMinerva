\NeedsTeXFormat{LaTeX2e}
\ProvidesClass{theslides}[2023/07/26 Minerva project's slide class.]

% pictures and colors
\RequirePackage[rgb]{xcolor}
\RequirePackage[dvips,xetex]{graphicx}
\RequirePackage{tikz}
\RequirePackage{calculator}

% package options
\DeclareOption*{\PassOptionsToClass{\CurrentOption}{beamer}}
\DeclareOption{spanish}{
  \PassOptionsToPackage{\CurrentOption}{thebasis}
}
\DeclareOption{english}{
  \PassOptionsToPackage{\CurrentOption}{thebasis}
}
\ProcessOptions\relax

\LoadClass[xcolor=rgb, aspecratio=43, usenames, dvipsnames, notheorems]{beamer}
\usefonttheme{serif}

% graphics
%\RequirePackage{graphbox}

% tables
\RequirePackage{booktabs}

% custom packages
\RequirePackage{thebasis} % Common class configuration.
\RequirePackage{thetheorems} % Theorem configuration.

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
maxnames=999,
eprint=false]{biblatex}

\AtEveryBibitem{%
  \clearlist{language}%
}


% beamer colours

\setbeamercolor{title}{fg = black}
\setbeamercolor{titlelike}{fg = black}
\setbeamercolor{structure}{fg = black}
\setbeamercolor{section in toc}{fg = black, bg = yellow}
\setbeamercolor{section in toc shaded}{fg = black}
\setbeamercolor{bibliography entry note}{fg = black}

% beamer fonts

\setbeamerfont{title}{series = \scshape, parent = structure}
\setbeamerfont{frametitle}{series = \scshape, parent = structure}
\setbeamerfont{section in toc}{series = \scshape, parent = structure}
\setbeamerfont{footline}{size = \fontsize{10}{11}\selectfont}

% beamer templates

\setbeamertemplate{caption}[numbered]
\setbeamertemplate{navigation symbols}{}
\setbeamertemplate{footline}[frame number]{}
%\setbeamertemplate{bibliography item}{\textbullet}
\setbeamertemplate{theorems}[numbered]
\setbeamertemplate{itemize items}{\textbullet}
\setbeamertemplate{frametitle continuation}{}

%% remove additional spacing before and after block environment

%\addtobeamertemplate{block begin}{\vskip -\bigskipamount}{}
%\addtobeamertemplate{block end}{}{\vskip -\smallskipamount}
% \addtobeamertemplate{block begin}{%
%   \setbeamercolor*{item}{fg=white}%
% }{}

% beamer setup
\AtBeginSection[]{
  \begin{frame}[noframenumbering,plain]
    \tableofcontents[currentsection,hideallsubsections]
  \end{frame}
}

\AtBeginSubsection[]{
  \begin{frame}[noframenumbering,plain]
    \tableofcontents[currentsection,currentsubsection]
  \end{frame}
}


\RequirePackage{tcolorbox}

\newtcbox{\alertbox}[1][black]{on line, arc=0pt, colback = black, boxsep = 0pt, left = 1pt, right = 1pt, top = 1pt, bottom = 1pt, boxrule = 0pt, nobeforeafter}

\newtcbox{\whitebox}[1][white]{arc=0pt, colback = white}

\renewcommand{\alert}[1]{
  \hspace{-2pt}\alertbox{\textcolor{white}{#1}}\hspace{-2pt}
}

% remove date
\date{}

% code
\RequirePackage{listings}
