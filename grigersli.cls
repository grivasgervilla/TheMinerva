\NeedsTeXFormat{LaTeX2e}
\ProvidesClass{grigersli}[2020/06/22 Griger's class for slides.]

% pictures and colors
\RequirePackage[rgb]{xcolor}
\RequirePackage{tikz}
\RequirePackage{calculator}

% package options
\DeclareOption*{\PassOptionsToClass{\CurrentOption}{beamer}}
\ProcessOptions\relax

\LoadClass[xcolor=rgb, aspecratio=43, usenames, dvipsnames]{beamer}
\usefonttheme{serif}

% fonts and symbols
\RequirePackage{unicode-math}
\setmainfont[Numbers={OldStyle}, Ligatures=NoCommon]{STIX2Text}[
Extension={.otf},
UprightFont={*-Regular},
BoldFont={*-Bold},
ItalicFont={*-Italic},
BoldItalicFont={*-BoldItalic}
]
\setmathfont{STIX2Math.otf}

% links
\hypersetup{
    colorlinks = true,
    breaklinks = true,
    allcolors = black,
}
