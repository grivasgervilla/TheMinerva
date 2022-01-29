\NeedsTeXFormat{LaTeX2e}
\ProvidesClass{grigerstd}[2022/01/10 Griger's class standalone]

% package options
\DeclareOption*{\PassOptionsToClass{\CurrentOption}{standalone}}
\DeclareOption{spanish}{
  \PassOptionsToPackage{\CurrentOption}{griger}
}
\DeclareOption{english}{
  \PassOptionsToPackage{\CurrentOption}{griger}
}
\ProcessOptions\relax

\LoadClass{standalone}

% fonts and symbols
\InputIfFileExists{font.cfg}{}{}