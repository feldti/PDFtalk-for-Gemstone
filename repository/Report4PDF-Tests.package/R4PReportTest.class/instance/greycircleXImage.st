accessing
greycircleXImage
	^(PDF classAt: #ImageXObject)
		on: ((Valuemap new: 9)
			add: #Subtype -> #Image;
			add: #Type -> #XObject;
			add: #Width -> 16;
			add: #Height -> 16;
			add: #BitsPerComponent -> 8;
			add: #ColorSpace -> #DeviceRGB;
			add: #Length -> 191;
			add: #SMask -> ((PDF classAt: #ImageXObject)
				on: ((Valuemap new: 7)
					add: #Subtype -> #Image;
					add: #Type -> #XObject;
					add: #Width -> 16;
					add: #Height -> 16;
					add: #BitsPerComponent -> 8;
					add: #ColorSpace -> #DeviceGray;
					add: #Length -> 256;
					yourself)
				externalBytes: (ByteArray fromASCII85String: 'z!<<*!s8W*!z!!!$!s8W-!s8W-!rr<$!!!*''!s8W-!s8W-!s8N''!!<<*!s8W-!s8W-!s8W*!!<<*!
	s8W-!s8W-!s8W*!s8W-!s8W-!s8W-!s8W-!s8W-!s8W-!s8W-!s8W-!s8W-!s8W-!s8W-!s8W-!s8W-!
	s8W-!s8W-!s8W-!s8W-!s8W-!s8W-!s8W-!s8W-!s8W-!s8W-!s8W-!!<<*!s8W-!s8W-!s8W-!!<<*!
	s8W-!s8W-!s8W*!!!*''!s8W-!s8W-!s8N''!!!!$!s8W-!s8W-!rr<$!zs8W-!s8W-!z~>')) newReference;
			add: #Filter -> #FlateDecode;
			yourself)
		externalBytes: #[120 218 149 210 45 18 131 48 16 5 224 72 142 128 204 17 34 145 149 200 200 72 36 117 72 84 35 35 51 131 137 68 70 230 2 204 32 145 112 9 206 65 223 132 105 134 254 208 110 63 153 121 100 151 221 108 219 19 239 189 82 234 18 149 101 233 156 219 78 76 211 196 57 71 120 61 168 235 26 135 125 223 191 132 113 130 11 151 19 85 85 105 173 83 120 28 71 148 30 190 66 161 212 27 42 122 2 196 246 78 80 174 35 176 214 54 77 35 165 188 145 241 232 74 198 24 203 243 252 175 124 81 20 244 126 178 44 211 81 71 131 109 210 231 137 201 132 16 144 55 198 180 109 59 252 130 124 90 49 86 128 175 150 115 199 240 14 37 132 16 235 27 25 125 124 162 243 60 227 143 48 4 246 144 122 78 238 20 124 218 250]
