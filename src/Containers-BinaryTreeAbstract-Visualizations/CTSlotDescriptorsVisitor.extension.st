Extension { #name : #CTSlotDescriptorsVisitor }

{ #category : #'*Containers-BinaryTreeAbstract-Visualizations' }
CTSlotDescriptorsVisitor >> visitCTBinaryTreeAbstract: aBinaryTree [

	^ (self visitObject: aBinaryTree) , {
		  ((self newSlotDescriptorSelector: #root) enablePredicate: [ :level |
			   aBinaryTree isEmpty not ]).
		  (self newSlotDescriptorSelector: #depth).
		  ((self newSlotDescriptorSelector: #asShapeBinaryTree)
			   inline;
			   quote) }
]
