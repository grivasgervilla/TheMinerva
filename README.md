# The Minerva
In this repository, you can find a collection of LaTeX utilities sharing a common style and with the objective of eventually creating a complete scientific LaTeX typesetting toolbox. Please note that some utilities are yet to be added as the toolbox is still a work in progress.

## :package: Clases

|Class Name|Description|
|---|---|
:books: `thebook`|This class can be used to create various scientific books or PhD theses.|
:page_facing_up: `thearticle`|This class can be utilized for writing various articles or standard documents.|
|:tv: `theslides`|This class facilitates the creation of slides for teaching purposes or presentations at conferences.|

## :clipboard: Packages

| Class Name | Description |
| --- | --- |
|:bank: `thebasis`| A package that collects some common configuration options.|
|:symbols: `thetheorems`|A package that defines numerous theorem-like environments in both Spanish and English languages.|


## Other Configuration Package :art:

- `thefonts.sty`: This file contains the font configuration, using the package `unicode-math` to set the different font options.

## Fonts :capital_abcd:

In these project, the following fonts are used:

- [STIX Two Text and STIX Two Math](https://www.stixfonts.org/) from the STIX Fonts project: This serif font is used as the main text font. You can download the last font version archives from their [GitHub repository](https://github.com/stipub/stixfonts) and install it into your system. Then, you only need to specify the folder where the font archives can be found with the `Path` option of the `fontspec` package.
- [Source Sans 3](https://fonts.google.com/specimen/Source+Sans+3?query=source+sans): This sans-serif font serves as an attention-grabbing choice for titles and other visually prominent elements. Additionally, it serves as the main font within the theslides class. The font, created by Paul D. Haunt, is freely available from Adobe. The creators of STIX Two fonts have [lauded it as a highly suitable companion to their font](https://github.com/stipub/stixfonts/issues/228#issuecomment-1007857503). 
- [Source Code Pro](https://fonts.google.com/specimen/Source+Code+Pro?query=source+code): This monospaced font, also designed by Paul D. Haunt, is specifically intended for code-like typesetting, such as in code snippets.