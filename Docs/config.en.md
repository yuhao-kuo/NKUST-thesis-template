## NKUST Thesis LaTeX Configuration

[繁體中文](config.md) | **English**

The template configuration splits into two parts: document format and user information. Format definitions live in **Configurations/**; the content loading settings are defined in **config.tex**.

The document format covers the PDF layout and the packages imported by the system. Its main settings live in **Configurations**, including which chapters and appendices to include and the layout settings. The style packages behind the layout live in **Templates**, which currently provides definitions for the Chinese and English abstracts, acknowledgements, chapters, references, and page margins.

### Content settings

To let you adjust the output PDF for specific situations, `config.tex` provides a load switch for each part of the document: `true` loads the part, `false` skips it.

### Layout adjustments

The cover and title page layouts live in `Instance`; everything else lives in `Templates` as `.sty` files.
To adjust the page layout, edit the formatting in those files.

### Fonts

The thesis fonts changed several times in the past. Version 2.0 added the fonts back into the project at users' request. The template currently uses `DejaVuSerif` and `eduki`. To add a font, edit the font settings in `template.tex`.

### Margins

A hardcover spine sits on the left edge of the page, so a centered layout pushes part of the text too close to the spine. The thesis **content** is therefore shifted left. Content here includes the cover, title page, abstracts, table of contents, acknowledgements, main text, and references.

> If all your output copies are perfect-bound (paperback), ignore the rest of this section.

With perfect binding, producing the cover from the shifted **content** moves it off the center of the cover page. A separate command produces an unshifted cover; see the [build guide](build.en.md).

### PDF metadata

The document metadata settings live in `Configurations/template.tex` and support the PDF title, subject, author, and keywords.
See the `\hypersetup` command of the hyperref package for details.

```
pdftitle={\titletw\ \titleen},						% document title
pdfsubject={\authorenname, \degreeen\ thesis - \titleen},	% document subject
pdfauthor={\authorenname \ \authortwname},					% author
pdfkeywords={\thesiskeywords},	% keywords
```

Note: the keyword setting is not linked to the keywords in the abstract.
