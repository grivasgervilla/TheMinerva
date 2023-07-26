\NeedsTeXFormat{LaTeX2e}
\ProvidesClass{thefragment}[2023/07/26 Minerva project's standalone class.]

% package options
\DeclareOption*{\PassOptionsToClass{\CurrentOption}{standalone}}
\DeclareOption{spanish}{
  \PassOptionsToPackage{\CurrentOption}{thebasis}
}
\DeclareOption{english}{
  \PassOptionsToPackage{\CurrentOption}{thebasis}
}
\ProcessOptions\relax

\LoadClass{standalone}

\RequirePackage{griger} % Common class configuration.