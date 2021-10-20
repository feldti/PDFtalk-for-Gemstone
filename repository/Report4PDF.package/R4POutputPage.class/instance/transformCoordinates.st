actions
transformCoordinates
	"Matrix method name changed from scale: to scaling: ... load latest release from Cincom Store"

	self renderer concat: ((PDF classAt: #Matrix) scaling: 1 @ -1).
