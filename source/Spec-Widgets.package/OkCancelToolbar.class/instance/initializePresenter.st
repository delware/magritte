initialization
initializePresenter 

	super initializePresenter.
	cancelButton 
		action: [
			cancelAction contents value == false
					ifFalse: [
						cancelled contents: true.
						owner 
							ifNil: [ self delete ]
							ifNotNil: [ owner delete ]]].