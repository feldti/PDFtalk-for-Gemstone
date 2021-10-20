accessing
setMaxOutputPage: anOutputPage

	(self maxOutputPage isNil or: [
		(anOutputPage outputPageIndex) > (self maxOutputPage outputPageIndex)]) ifTrue: [
			self maxOutputPage: anOutputPage]
