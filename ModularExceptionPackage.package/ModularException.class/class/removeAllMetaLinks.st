MetaLinks
removeAllMetaLinks
	"Removes all metalinks and triggers a garbage collection"
	MetaLink uninstallAll.
	Smalltalk garbageCollect.