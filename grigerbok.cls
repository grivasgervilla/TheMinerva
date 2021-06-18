\NeedsTeXFormat{LaTeX2e}
\ProvidesClass{grigersli}[2020/06/22 Griger's class for slides.]

% package options
\DeclareOption*{\PassOptionsToClass{\CurrentOption}{book}}
\ProcessOptions\relax

\LoadClass{book}

% fonts and symbols

\InputIfFileExists{font.cfg}{}{}

% theorems

\RequirePackage{amsthm}
\RequirePackage{thmbox}
\RequirePackage{letltxmacro}

\thmboxoptions{
  style=S,
  underline=false,
  bodystyle=\normalfont\noindent,
  headstyle=\normalfont\bfseries#1 #2 ,
  titlestyle=\normalfont\bfseries : #1
}
