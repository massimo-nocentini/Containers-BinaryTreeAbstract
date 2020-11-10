Extension { #name : #CTBinaryTreeEmpty }

{ #category : #'*Containers-BinaryTreeAbstract-Visualizations' }
CTBinaryTreeEmpty >> edges: aLink parent: parent [
	^ ValueLink new
		  value: parent -> self;
		  nextLink: aLink;
		  yourself
]
