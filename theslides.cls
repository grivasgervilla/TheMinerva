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

\LoadClass[xcolor=rgb, usenames, dvipsnames, notheorems]{beamer}

% tables
\RequirePackage{booktabs}

% custom packages
\RequirePackage{thebasis} % Common class configuration.
\RequirePackage{thetheorems} % Theorem configuration.

% beamer colours

\setbeamercolor{title}{fg = black}
\setbeamercolor{frametitle}{fg = lightgray}
\setbeamercolor{structure}{fg = black}
\setbeamercolor{section in toc}{fg = black, bg = yellow}
\setbeamercolor{section in toc shaded}{fg = black}
\setbeamercolor{subsubsection in toc shaded}{fg = lightgray}
\setbeamercolor{bibliography entry note}{fg = black}
\setbeamercolor{page number in head/foot}{fg=lightgray}
\setbeamercolor{block title}{fg=black,bg=block-background}
\setbeamercolor{block body}{fg=black,bg=block-background}

% beamer fonts
\setbeamerfont{title}{size=\Huge}
\setbeamerfont{author}{size=\large}
\setbeamerfont{frametitle}{size=\small, parent = structure}
\setbeamerfont{section in toc}{parent = structure, series=\bf, size = \normalsize}
\setbeamerfont{subsection in toc}{parent = structure, size = \normalsize}
\setbeamerfont{subsubsection in toc}{parent = structure, size = \normalsize}
\setbeamerfont{block title}{parent = structure, series=\bf}
\setbeamerfont{footline}{size = \fontsize{10}{11}\selectfont}
\setbeamerfont{page number in head/foot}{size=\small}

% beamer templates

\setbeamertemplate{caption}[numbered]
\setbeamertemplate{navigation symbols}{}
\setbeamertemplate{blocks}[rounded]
\setbeamertemplate{theorems}[numbered]
\setbeamertemplate{itemize items}{\textbullet}
\setbeamertemplate{frametitle continuation}{}
\setbeamertemplate{section in toc}[sections numbered]
\setbeamertemplate{subsection in toc}[subsections numbered]

\setbeamertemplate{frametitle}{
  \vspace{0.5em}
  \insertframetitle
  \vspace{0.25em}
  {\usebeamercolor[fg]{frametitle}\hrule}
  \vspace{0.5em}
}

\setbeamertemplate{footline}{
  \hfill%
  \usebeamercolor[fg]{page number in head/foot}%
  \usebeamerfont{page number in head/foot}%
  \setbeamertemplate{page number in head/foot}[framenumber]%
  \usebeamertemplate*{page number in head/foot}\kern1em%
  \vspace{0.2cm}
}


%% remove additional spacing before and after block environment

%\addtobeamertemplate{block begin}{\vskip -\bigskipamount}{}
%\addtobeamertemplate{block end}{}{\vskip -\smallskipamount}
% \addtobeamertemplate{block begin}{%
%   \setbeamercolor*{item}{fg=white}%
% }{}

% beamer setup
\AtBeginSection[]{
  \begin{frame}[noframenumbering,plain]
    \tableofcontents[
      currentsection,
      subsectionstyle=show/show/hide,
      subsubsectionstyle=hide,
      sectionstyle=show/shaded
    ]
  \end{frame}
}

\AtBeginSubsection[]{
  \begin{frame}[noframenumbering,plain]
    \tableofcontents[currentsection, subsectionstyle=show/shaded/hide, subsubsectionstyle=show/show/hide/hide]
  \end{frame}
}

\AtBeginSubsubsection[]{
  \begin{frame}[noframenumbering,plain]
    \tableofcontents[currentsection, subsectionstyle=show/shaded/hide, subsubsectionstyle=show/shaded/hide/hide]
  \end{frame}
}


\RequirePackage{tcolorbox}

\newtcbox{\alertbox}[1][black]{on line, arc=0pt, colback = black, boxsep = 0pt, left = 1pt, right = 1pt, top = 1pt, bottom = 1pt, boxrule = 0pt, nobeforeafter}

\newtcbox{\whitebox}[1][white]{arc=0pt, colback = white}

\renewcommand{\alert}[1]{
  \textbf{#1}
}

% remove date
\date{}

% code
\RequirePackage{listings}


