#Work Sans

A SIL Open Font project titled 'Work Sans' (former working title 'Alice') for Latin.

Work Sans is a typeface family based loosely on early Grotesques — i.e. [Stephenson Blake](https://www.flickr.com/photos/stewf/14444337254/), [Miller & Richard](https://archive.org/stream/printingtypespec00millrich#page/226/mode/2up/) and [Bauerschen Giesserei](https://archive.org/stream/hauptprobeingedr00baue#page/109/mode/1up). The core of the fonts are optimised for on-screen medium-sized text usage (14px-48px) – but still can be used in print well. The fonts closer to the extreme weights are designed more for display use. Overall, features are simplified and optimised for screen resolutions – for example, diacritic marks are larger than how they would be in print.

The fonts under **/fonts/desktop** are OTF fonts for desktop programs such as the Adobe Suite or Office (Office fonts are only styled linked for Regular and Bold). The metrics are set so that they are more consistent across desktop programs.

The fonts under **/fonts/webfonts** contain TTF, WOFF, and WOFF2 formats for web use. They have been autohinted with ttfautohint and manually corrected (see Notes below). There are acutally two separate families here: ""Work Sans"" Thin to Black (9 weights as per CSS restrictions), and a separate familiy "Work Sans Hairline".

This typeface was funded by Google and will be available on Google Fonts shortly – many thanks to Dave Crossland for the commission.


## [Download v1.32 (OTF, TTF, WOFF, WOFF2)](https://github.com/weiweihuanghuang/Work-Sans/archive/v1.32.zip)

## [View a webfont specimen](http://weiweihuanghuang.github.io/Work-Sans/).


<a href="http://weiweihuanghuang.github.io/Work-Sans/">![Thin to Regular](https://github.com/weiweihuanghuang/Work-Sans/raw/master/documentation/images/waterfall.png)

![Screenshot of a test](https://github.com/weiweihuanghuang/Work-Sans/raw/master/documentation/images/preview.png)</a>

## [Or print out a PDF specimen](https://github.com/weiweihuanghuang/Work-Sans/raw/master/documentation/Work-Sans-Print-Specimen.pdf).

## Suggestion, Comments, Contributions
If you spot any errors or have any suggestions for improvements you can fork this project, create an [Issue](../../issues) or email me at <a href="mailto:wweeiihhuuaanngg@gmail.com">wweeiihhuuaanngg@gmail.com</a>.


##Notes

Source files were partly prepared for use in [Metapolator](http://www.metapolator.com). 

The project started in June 2014 and the brief was to have a [minimum viable product](http://en.wikipedia.org/wiki/Minimum_viable_product) (alpha release with 9 weights) by December 2014.

There is a Telugu glyph set (Work Sans-Telugu.glyphs) that comes from [Ramabhadra](http://teluguvijayam.org/fonts.html) by Silicon Andhra. Glyphs marked red in the file are those that have been manually cleaned up, the rest are automatically cleaned up with FontForge from Ramabhadra. The Latin glyphs in Work Sans-Telugu.glyphs are out of date.

*Note: There are no UFOs as UFOs exported from Glyphs App will currently not generate in Robofont and so on due to using Glyphs 2 features '[Bracket trick](http://www.glyphsapp.com/tutorials/alternating-glyph-shapes)' and '[Brace trick](http://www.glyphsapp.com/tutorials/additional-masters-for-individual-glyphs-the-brace-trick)' to solve interpolation bumps. Glyphs marked orange are bracket layers and glyphs marked yellow are using brace layers.*

Refer to [BUILD.txt](/sources/BUILD.txt) for documentation on my process for hinting and generating webfonts.


## License

Work Sans is licensed under the SIL Open Font License v1.1 (<http://scripts.sil.org/OFL>)

To view the copyright and specific terms and conditions please refer to [LICENSE.txt](LICENSE.txt).

## Repository Layout

This font repository follows the Unified Font Repository v2.0, 
a standard way to organize font project source files. Learn more at 
https://github.com/raphaelbastide/Unified-Font-Repository
