user guide text
userGuide3LayoutMethods

	^'
!Layout Section Methods

:positioning
*align: - horizontal position within a section. Valid values are: #left (default), #center, #right. Methods are available for each value.
*left
*center
*right

*verticalAlign: - vertical position within a section. Valid values are: #top, #middle, #bottom. Methods are available for each value.
*top
*middle
*bottom

*noWrap - do not allow the strings in the nested sections to wrap. If there is not enough room for the strings, a "truncated content" arrow will be displayed in the lower right corner of the content.

:fonts
*bold - use the bold version of the current font
*italic - use the italic version of the current font
*boldItalic - use the bold + italic version of the current font
*font: - set the font, default is #Helvetica. Methods are provided for the default fonts: courier, helvetica, timesRoman, zapfDingbats

*fontSize: - size of the font. Default is 10. Methods are provided for larger and smaller fonts. When used with bulleted text, these keywords apply to the bullet size.
*veryLarge - font size = 14
*large - font size = 12
*medium - font size = 10 (default)
*small - font size = 8
*verySmall - font size = 6
Note that the numbers do not have to be integers. A font size of 12.5 works fine.

:layout
*margin: - space between the edges of the page or parent section, and the content box. It can be entered as a single numbers, in which case all four margins (top, right, bottom, left) will be set to the same number, or it can be entered as an array, like #(10 15 5 20), corresponding to the top, right, bottom and left. Convenience methods are available for each edge, which override the previous setting.
*marginTop:
*marginRight:
*marginBottom:
*marginLeft:

*padding: - space between the content box and the content. It can be entered as a single numbers, in which case all four padding values (top, right, bottom, left) will be set to the same number, or it can be entered as an array, like #(10 15 5 20), corresponding to the top, right, bottom and left. Convenience methods are available for each edge, which override the previous setting.
*paddingTop:
*paddingRight:
*paddingBottom:
*paddingLeft:

*origin: - sets a fixed top and right value for the section, using a "x @ y" point 
*height: - sets the fixed height of the layout section in pixels 
*width: - sets the fixed width of the layout section in pixels
*widthPercent: - sets a fixed layout width as a percentage of the parent section or page

:section "add" methods
*bullet - add a bullet section
*bullet: - add a bullet section using a single argument block
*cr - add a text section with a single string section with a "new line" parameter
*horizontalLine - add a horizontal line with top and bottom margin of 4. The margin values can be changed (e.g. page horizontalLine marginTop: 10). 
*image - add an image section
*image: - add an image section using a single argument block 
*line - add a line section
*line: - add a line section using a single argument block
*section - add a layout section. Useful for positioning other sections and for wrapping other sections with borders.
*section - add a layout section using a single argument block
*string: - add a text layout with one string section, with the string value from the parameter
*table - add a table section
*table: - add a table section using a single argument block 
*text - add a text section
*text: - add a text section  using a single argument block 
 
+report
*pageHeight: - height of page in pixels, using 72 pixels per inch
*pageWidth: - width of page in pixels, using 72 pixels per inch
*A3Landscape - width = 1191, height = 842, margin =  36, 16.535" x 11.693"
*A3Portrait - width = 842, height = 1191, margin =  36, 11.693" x 16.535" 
*A4Landscape - width = 842, height = 595, margin =  36, 11.693" x 8.268"
*A4Portrait - width = 595, height = 842, margin =  36, 8.268" x 11.693"
*A5Landscape - width = 595, height = 420, margin =  36, 8.268" x 5.827"
*A5Portrait - width = 420, height = 595, margin =  36, 5.827" x 8.268"
*businessCard - width = 252, height = 144, margin =  0, 3.5" x 2"
*landscape - letterLandscape
*legalLandscape - width = 1008, height = 612, margin =  36, 14" x 8.5"
*legalPortrait - width = 612, height = 1008, margin =  36, 8.5" x 14"
*letterLandscape - width = 792, height = 612, margin =  36, 11" x 8.5"
*letterPortrait - width = 612, height = 792, margin =  36, 8.5" x 11"
*portrait - letterPortrait

+miscellaneous
*pageNumberPattern: - string to be replaced with page number, default is <page>
*pageTotalPattern: - string to be replaced with total number of output pages per report page, default is <total>
*reportTotalPattern: - string to be replaced with total number of pages for the report, default is <report>

For specific section types, all format parameters are supported. But some sections cannot be nested. For example, you cannot add an image section to a text section. Adding an invalid section raises an exception.

+text
*copyright - add a copyright character to the last string section; create an empty string section if needed
*trademark - add a trademark character to the last string section; create an empty string section if needed
*flip - flip text upsidedown; useful for creating folded report output
*leading: - set the leading of the text, which is the space between rows of strings. Default is half of the font descender. 
*string - add a new string section. Output will be concatenated with previous string sections.
*string: - add a new string section using a single argument block
*text - no action; answers "self"
*gray - set the text color to foreground: ''gray''
*red - set the text color to foreground: ''red'' 
*background: #(red blue green) - for example, red = #(0.75 0 0)
*foreground: #(red blue green)
*background: aSymbol - where aSymbol is the key in R4POutput>>colorNameTable which translates a named color to a RBG array.
*foreground: aSymbol - where aSymbol is the key in R4POutput>>colorNameTable which translates a named color to a RBG array.
Both background and foreground color can be set as a hex string, like #''339999'', which will be translated to RGB values. See R4PReportTest>>exampleBackgroundColorHexTable.

+string
*cr - add a new line (same as newLine)
*newLine - add a new line (same as cr)
*string: - set the string content of the section
A string section can only contain a string, with font parameters. No other section parameters are supported. 

+table
*header - add a row as the table header. It will be rendered after each page break.
*header: -  add a header row using a single argument block 
*row - add a row section

+row
*cell - add a cell section
*cell: - add a cell section using a single argument block
*cellBorder: - set the default border values for each cell in the row. Note that you can a different border setting on the row itself.
*cellPadding: - set the default padding for each cell (space between the border and the contents)
*cellSpacing: - set the default spacing for each cell (space between each cell)

+cell
A cell can contain any other layout section, including another table.

+line 
*start: - the start point of the line (x @ y)
*end: - the end point of the line (x @ y)
*lineWidth: - width of the line; default is 0.5  
*gray - set the line color to foreground: ''gray''
*red - set the line color to foreground: ''red'' 

+image
*filename: - the full path of the image file
*image: - the image from an image reader, which allows for images to be stored as byte arrays (e.g.  (JPEGImageReader new from: imageStream) image )
*scale: - sets a size adjustment for the image. Default is the image height * 0.75 (image are stored as 96 dpi, PDF default is 72 dpi, 72 / 96 = 0.75)
    Note that only 8 bit grayscale images are supported.
-
'
