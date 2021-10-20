accessing
cherniakXImage
	^(PDF classAt: #ImageXObject)
		on: ((Valuemap new: 8)
			add: #Subtype -> #Image;
			add: #Type -> #XObject;
			add: #Width -> 75;
			add: #Height -> 75;
			add: #BitsPerComponent -> 8;
			add: #ColorSpace -> ((PDF classAt: #Indexed)
				base: #DeviceGray
				number: 255
				bytes: (ByteArray fromASCII85String: '!!*-''"9eu8#mq(N%hK?e''c8&Y6:417<+''9VH[L@O\@K2_]Y2,\zzzzzzzzzzzzzzzzzzzzzzzzzz
	zzzzzzzzzzzzzzzzzzzzzzzzzzzz~>'));
			add: #Length -> 427;
			add: #Filter -> #FlateDecode;
			yourself)
		externalBytes: (ByteArray fromASCII85String: 'GhVPOlZ.S2&;=2F:p_%noR=Wbg?&:jYR*$06FM+YgR3r^(Zrqj?q><??@=l:3DsG,W5Fj]Xp\'']Bp.
	#8(<VJu0)uuI+rtcPVtL"q\Mr[?k+RG&.MP-C@e`8@pt7ZV<0eH*f,Wu[GHbimFab.7?FU/p3XO;k34V
	2t!)Y8OTZ==TbsD,9`J[Om3D9V<gD]khcoL$8r2ru("oC8sks#b[Jk32YoC!dt%o<Fc\e.f:TI>"LaVc
	''_03uUL31U.CBgnA"$]_$(7&jQmr#^V23J2`\k4Y-MAS!tm:cd4[1N+3JQ/[_f8S<CLJfCuQ*-BXKbe
	V(mgj5:rCS,]d=e5enZe>:_;SrRbGtb")mf''Mn4jl@$-/[X&VKoP-=r[$k^iY%LC"?kcPU7<o_1r0:O
	mkp/Z8NsJeR<_9T$D1R6c.<_`Su_%iT\#"ijh2R4UOmG/QR8Si9@m_O_''r+MYMVaS;];"B?H(:ERGRH
	22s@B,/HZEeZ2*T;7h95n1j[_lI7m+Y]jEFHKS5qr/Z2;)Fj1C!.=sTc<Oi~>')
