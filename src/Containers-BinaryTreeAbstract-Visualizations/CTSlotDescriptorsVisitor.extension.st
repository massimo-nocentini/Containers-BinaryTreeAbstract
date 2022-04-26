Extension { #name : #CTSlotDescriptorsVisitor }

{ #category : #'*Containers-BinaryTreeAbstract-Visualizations' }
CTSlotDescriptorsVisitor >> visitCTBinaryTreeAbstract: aBinaryTree [

	^ (self visitObject: aBinaryTree) , { 
		  (self newSlotDescriptor
			   selector: #root;
			   enablePredicate: [ aBinaryTree isEmpty not ];
			   yourself).

		  (self newSlotDescriptor
			   selector: #depth;
			   yourself).

		  (self newSlotDescriptor
			   selector: #asShapeBinaryTree;
			   inline;
			   quote) }
]
