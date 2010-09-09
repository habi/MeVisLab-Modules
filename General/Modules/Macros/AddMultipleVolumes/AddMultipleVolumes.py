from mevis import *

def Clear():
    # Clear the cache
    ctx.field("MLImageFormatFileCache.clear").touch()
    ctx.field("MLImageFormatFileCache1.clear").touch()

    # Initialize ImageSwitch
    ctx.field("Switch.currentInput").value = 0

def Add():
    # Add RegionGrowingMacroOutput to Module.OutputImage
    # Update output
    ctx.field("MLImageFormatFileCache.update").touch()
    ctx.field("MLImageFormatFileCache1.update").touch()
    
    # Switch, so we can add both images
    ctx.field("Switch.currentInput").value = 1
    
def RemoveAll():
  ctx.field("MarkerListEditor.deleteAll").touch()