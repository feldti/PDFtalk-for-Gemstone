accessing
greyblockXImage
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
				bytes: (ByteArray fromASCII85String: '!&-8k4[2;%8P2cT<**4/@q9:hDK0`BI=Hj&LQ%C_R@KnCVQ6f&ZaI?T^]4?7zzzzzzzzzzzzzzzzzzz
	zzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzz~>'));
			add: #Length -> 144;
			add: #Filter -> #FlateDecode;
			yourself)
		externalBytes: #[120 218 101 208 209 26 66 64 20 69 225 15 137 36 35 41 146 25 201 72 106 222 255 245 86 186 59 213 190 252 239 246 130 191 121 158 231 7 97 20 39 105 166 242 162 60 125 228 11 170 69 124 231 220 243 113 183 183 171 209 151 170 6 63 16 112 174 27 8 66 1 85 211 66 24 9 56 182 26 162 88 192 65 27 136 19 1 123 211 65 146 10 80 93 15 105 38 96 215 15 144 41 1 219 193 130 202 5 108 236 8 121 33 96 61 78 80 148 2 86 211 12 203 185 186 105 181 233 250 193 142 211 252 130 31 112 255 189 120 3 157 4 91 218]
