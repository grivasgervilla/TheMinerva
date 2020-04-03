\NeedsTeXFormat{LaTeX2e}
\ProvidesClass{grigerart}[2020/03/12 Griger's class for articles.]


% fonts and symbols

\RequirePackage[T1]{fontenc}

\RequirePackage[oldstylenums, largesmallcaps, nott]{kpfonts}

% pictures and colors
\RequirePackage[rgb]{xcolor}
\RequirePackage{tikz}
\RequirePackage{calculator}

% package options

\DeclareOption*{\PassOptionsToClass{\CurrentOption}{article}}
\ProcessOptions\relax

\RequirePackage{kvoptions}
\DeclareStringOption[0]{hue}
\DeclareStringOption[0.3]{sdrawing}
\DeclareStringOption[0.9]{bdrawing}
\DeclareStringOption[0.3]{stext}
\DeclareStringOption[0.5]{btext}
\DeclareStringOption[1]{sline}
\DeclareStringOption[0.5]{bline}
\ProcessKeyvalOptions*

\LoadClass{article}

% palette

\COPY{\grigerart@hue}{\H}
\COPY{\grigerart@sdrawing}{\sdrawing}
\COPY{\grigerart@bdrawing}{\bdrawing}
\COPY{\grigerart@stext}{\stext}
\COPY{\grigerart@btext}{\btext}
\COPY{\grigerart@sline}{\sline}
\COPY{\grigerart@bline}{\bline}
\foreach \i in {0,...,359}{
  \ADD{\H}{\i}{\hue}
  \MODULO{\hue}{360}{\normhue}
  \xglobal\definecolor{c\i}{Hsb}{\normhue,1,1}
  \xglobal\definecolor{l\i}{Hsb}{\normhue,\sline,\bline}
  \xglobal\definecolor{d\i}{Hsb}{\normhue,\sdrawing,\bdrawing}
  \xglobal\definecolor{t\i}{Hsb}{\normhue,\stext,\btext}
}

% theorems

\RequirePackage{amsthm}
\RequirePackage{thmtools}

\declaretheoremstyle[
thmbox = {style=S, nounderline, bodystyle=\normalfont\noindent}
]{grigerthm}

% links

\RequirePackage{hyperref}
\makeatletter
\AtBeginDocument{
  \hypersetup{
    pdftitle = {\@title},
    pdfauthor = {\@author},
    linktoc = page
  }
}
\makeatother

\hypersetup{
    colorlinks = true,
    breaklinks = true,
    allcolors = t0,
}

% todonotes

\RequirePackage{todonotes}
\setuptodonotes{linecolor = black, bordercolor = black, backgroundcolor = white, figcolor = white, size = \footnotesize}

\tikzset{notestyleraw/.append style={rounded corners = 0pt}}
% \makeatletter
% \tikzstyle{notestyleraw} = [
% draw=\@todonotes@currentbordercolor,
% fill=\@todonotes@currentbackgroundcolor,
% text=\@todonotes@currenttextcolor,
% line width=0.5pt,
% text width = \@todonotes@textwidth - 1.6ex - 1pt,
% inner sep = 0.8 ex
% ]
% \makeatother

% tables

\RequirePackage{booktabs}

% enumitem
\RequirePackage{enumitem}

% title

\RequirePackage{etoolbox}
\makeatletter
\patchcmd{\@maketitle}% <cmd>
  {\@title}% <search>
  {\@title \\ \color{d0}\rule{\textwidth}{1pt}}% <replace>
  {}{}% <success><failure>
\makeatother

% appendices
\RequirePackage[page, toc, titletoc, title]{appendix}
