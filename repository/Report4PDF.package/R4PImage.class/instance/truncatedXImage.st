accessing
truncatedXImage
	"<ImageXObject>
	created with:
		| xImage |
		xImage := (GIFImageReader new from: (ReadStream on: R4PImage new truncatedGif)) image asPDF.
		xImage asMethod: #truncatedXImage in: #accessing package: 'Report4PDF'
		
	this creates a method on the class side of ImageXObject. Moved by hand to here and fixed namespaces."

	^(PDF classAt: #ImageXObject)
		on: ((Valuemap new: 8)
			add: #Subtype -> #Image;
			add: #Type -> #XObject;
			add: #Width -> 12;
			add: #Height -> 12;
			add: #BitsPerComponent -> 8;
			add: #ColorSpace -> ((PDF classAt: #Indexed)
				base: #DeviceGray
				number: 255
				bytes: (ByteArray fromASCII85String: '@"<mEbKeG^pAFpjzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzz~>'));
			add: #Length -> 62;
			add: #Filter -> #FlateDecode;
			yourself)
		externalBytes: #[120 218 77 140 65 14 0 33 12 2 113 85 84 254 255 96 219 37 26 231 52 5 82 105 80 134 170 64 181 131 8 248 167 246 56 8 33 55 65 65 186 220 216 213 30 215 119 125 242 230 171 191 251 3 206 151 100 3 201 78 2 120]
