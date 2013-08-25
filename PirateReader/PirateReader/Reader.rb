#
#  Reader.rb
#  PirateReader
#
#  Created by zhou on 13-8-25.
#  Copyright 2013年 zhou. All rights reserved.
#

class Reader < NSDocument
  def init
  	super
  	if (self != nil)
      # Add your subclass-specific initialization here.
      # If an error occurs here, return nil.
  	end
    self
  end

  def windowNibName
    # Override returning the nib file name of the document
    # If you need to use a subclass of NSWindowController or if your document supports multiple NSWindowControllers, you should remove this method and override -makeWindowControllers instead.
    "Reader"
  end

  def windowControllerDidLoadNib(aController)
    super
    # Add any code here that needs to be executed once the windowController has loaded the document's window.
  end

  def dataOfType(typeName, error:outError)
    #
    # Insert code here to write your document to data of the specified type. If outError != NULL, ensure that you create and set an appropriate error when returning nil.
    # You can also choose to override -fileWrapperOfType:error:, -writeToURL:ofType:error:, or -writeToURL:ofType:forSaveOperation:originalContentsURL:error: instead.
    #
    if outError
        outError.assign(NSError.errorWithDomain(NSOSStatusErrorDomain, code:-4, userInfo:nil))
    end
    return nil
  end

  def readFromData(data, ofType:typeName, error:outError)
    #
    # Insert code here to read your document from the given data of the specified type. If outError != NULL, ensure that you create and set an appropriate error when returning NO.
    # You can also choose to override -readFromFileWrapper:ofType:error: or -readFromURL:ofType:error: instead.
    #
    if outError
        outError.assign(NSError.errorWithDomain(NSOSStatusErrorDomain, code:-4, userInfo:nil))
    end
    true
  end

  def displayName
    # Return lowercase 'untitled', to comply with HIG
    fileURL ? super : super.sub(/^[[:upper:]]/) { |s| s.downcase }
  end
end


