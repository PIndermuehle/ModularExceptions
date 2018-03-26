HelperMethods
try: method onError: alternativeMethod
	"Attempts to perform the block method. On any error it performs the alternative instead"
	[^method value] on: Error do: [^alternativeMethod value].