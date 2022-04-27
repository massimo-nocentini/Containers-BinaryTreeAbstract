Extension { #name : #CTSlotDescriptorsVisitor }

{ #category : #'*Containers-BinaryTreeAbstract-Visualizations' }
CTSlotDescriptorsVisitor >> visitCTBinaryTreeAbstract: aBinaryTree [

	^ (self visitObject: aBinaryTree) , { 
		  (self newSlotDescriptorSelector
			   selector: #root;
			   enablePredicate: [ aBinaryTree isEmpty not ];
			   yourself).

		  (self newSlotDescriptorSelector
			   selector: #depth;
			   yourself).

		  (self newSlotDescriptorSelector
			   selector: #asShapeBinaryTree;
			   inline;
			   quote) }
]
