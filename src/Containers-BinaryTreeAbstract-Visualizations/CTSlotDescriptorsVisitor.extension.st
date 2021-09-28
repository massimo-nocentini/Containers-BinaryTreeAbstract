Extension { #name : #CTSlotDescriptorsVisitor }

{ #category : #'*Containers-BinaryTreeAbstract-Visualizations' }
CTSlotDescriptorsVisitor >> visitCTBinaryTreeAbstract: aBinaryTree [

	^ (self visitObject: aBinaryTree) , { 
		  #depth asSlotDescriptor.
		  (#asShapeBinaryTree asSlotDescriptor
			   inline: true;
			   quote) }
]
