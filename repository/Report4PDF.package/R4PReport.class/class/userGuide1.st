user guide text
userGuide1

	^'+Report4PDF User Guide

PDF4Smalltalk  is an implementation of the PDF specification (ISO standard PDF 32000-1:2008) in VisualWorks Smalltalk. Report4PDF generates output for PDF4Smalltalk  using layout and content information, coding in a style influenced by Seaside. This is intended to be a programmer''s tool for building PDF content; it is not an end user report tool.

Development of Report4PDF was driven by need to provide reports from Seaside applications. Using a generated PDF is a good fit, since it is seemless to serve a PDF document to a web browser.

This document lists the layout methods, as well as examples. All examples are coded in R4PReportTest under "examples". These examples are used to generated SUnit test which check for consistent output (see R4PReportTest>>create* methods under "actions''). A separate technical guide deals with the design and implementation. 

A reports consists of a report definition, containing pages, with each page holding content. Content consistens of text, tables, lines and images, each with some layout information. Layout parameters are used to position and configure the display of content. 

:Layout components
*report - starting point with default layout parameters
*page - a logical page of content that can be split over many output pages
*section - an area of the report which can contain other sections
*text - string content
*table - a layout structure with rows and columns
*row - one row of a table
*cell - one cell of a row
*image - a JPG, PNG or GIF image file
*line - a line from anywhere to anywhere on the page, typically used for a horizontal line as a separator

Each page has a collection of header, body and footer layouts. Headers and footers repeat on each output page, with optional include and exclude blocks (e.g. include: [:page | page > 1]). Body layout sections will span printed pages if required.

>imageLayoutGif

Sections inherit their layout properties from their parent section, with the report providing default values. By default, a nested section is the same width as its parent, with its margin and padding calculated as an offset from the parent layout section. Section, text and table cell layouts can contain any other layout. Nested tables can be used as a handy layout technique.

Sections are positioned sequentially on the page, or can have a fixed layout. Fixed layouts can be positioned anywhere on the page and are not included in the sequential layout position calculations. Layouts nested in fixed layout sections use the fixed layout parent as their content boundary, wheres variables layout parent section calculate their size from their nested section''s size.

>imageLayoutspacingGif

Tables allow content to be positioned in organized rows and columns. They can be used for column based content, or to define a complex page layout, much like HTML tables. Each part of a table is a layout section, so all the layout attributes, like margin and border, apply. Column width is calculated for each table column from the vertical collection of table cells. Since table cells are just another layout section, they can contain any other layout, like a nested table or image.

>imageTableGif

Table row height is calculated from the tallest cell. After a page break, cells that do not have content that is "tall" enough still use their horizontal space. Table headers can be optionally repeated on page breaks.

>imageTableCellGif

If text cannot fit into a constrained space, Report4PDF will render an "truncated" arrow in the lower right corner of the parent section. This can happen in table content that does not allow for wrapped text.

>imageTruncatedGif

Images can be sourced from either a file or from a byte array, which is handy when an application stores image content directly (like Seaside''s WAFileLibrary). Only 8 bit grayscale images are supported This user guide''s images are stored as ByteArray methods on the class side of R4PReport. 
-
'
