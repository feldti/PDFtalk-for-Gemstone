accessing
emptyblockXImage
	^(PDF classAt: #ImageXObject)
		on: ((Valuemap new: 8)
			add: #Subtype -> #Image;
			add: #Type -> #XObject;
			add: #Width -> 18;
			add: #Height -> 18;
			add: #BitsPerComponent -> 8;
			add: #ColorSpace -> ((PDF classAt: #Indexed)
				base: #DeviceGray
				number: 255
				bytes: (ByteArray fromASCII85String: '!<3$!zzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzz~>'));
			add: #Length -> 25;
			add: #Filter -> #FlateDecode;
			yourself)
		externalBytes: #[120 218 99 100 196 0 12 104 0 187 8 170 142 225 35 66 216 239 24 0 0 135 214 0 213]
