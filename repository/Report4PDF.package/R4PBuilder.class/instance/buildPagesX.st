build
buildPagesX

	self report pages do: [:eachPage | 
		self reportPage: eachPage.
		self buildPage]
