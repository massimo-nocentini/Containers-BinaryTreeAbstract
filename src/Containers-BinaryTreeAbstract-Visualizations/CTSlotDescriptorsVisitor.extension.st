Extension { #name : #CTSlotDescriptorsVisitor }

{ #category : #'*Containers-BinaryTreeAbstract-Visualizations' }
CTSlotDescriptorsVisitor >> visitCTBinaryTreeAbstract: aBinaryTree [

	^ (self visitObject: aBinaryTree) , (aBinaryTree
		   ifEmpty: [ {  } ]
		   ifNotEmpty: [ { #root asSlotDescriptor } ]) , { 
		  #depth asSlotDescriptor.
		  (#asShapeBinaryTree asSlotDescriptor
			   inline;
			   quote) }
]
