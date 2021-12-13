# latexUtilities
In this repository you can find some LaTeX utilities that I have create to use in my daily LaTeX workflow:

## Custom Classes :clipboard:

- `grigerart`: It is a class that inherits from the base `article`. This class can be use for any article or standard document that you need to write.
- `grigersli`: It is a class that inherits from the `beamer` class. I use this class to create any slides that I have to use for teaching or for a presentation in a conference.
- `grigerbok`: It is a class that inherits from the `book` class. I will use this class to create any scientific book that I want to write or my PhD thesis.

## Custom Packages :package:

- `griger`: It a package that collects some common configuration options.
- `grigerthm`: It a package that defines several theorem like environments with custom style in Spanish or English.

## Other Configuration Files :art:

- `lstconfig.tex`: This file contains a `listings` package basic configuration. This file also defines custom styles for `C++` (including Doxygen documentation comment keywords highlighting) and `Makefile` language. 
- `font.cfg`: This file contains the font configuration, using the package `unicode-math` to set the different font options. It is included by all the classes to configure the font properly.

## Fonts :capital_abcd:

In these templates I use the [STIX2 font](https://www.stixfonts.org/) from the STIX Fonts project.

You can download the last font version archives from their [GitHub repository](https://github.com/stipub/stixfonts) and install it into your system. Then you only need to specify the folder where the font archives can be found with the `Path` option of the `fontspec` package. I use the command `kpsewhich` in a Linux shell to locate those files.

Nowadays, I use Fira Code as the monospaced font since STIX2 has not a monospaced style.
