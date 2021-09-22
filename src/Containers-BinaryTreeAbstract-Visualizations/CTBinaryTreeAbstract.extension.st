Extension { #name : #CTBinaryTreeAbstract }

{ #category : #'*Containers-BinaryTreeAbstract-Visualizations' }
CTBinaryTreeAbstract >> acceptSlotDescriptorsVisitor: aVisitor [

	^ aVisitor visitCTBinaryTreeAbstract: self
]

{ #category : #'*Containers-BinaryTreeAbstract-Visualizations' }
CTBinaryTreeAbstract >> asShapeBinaryTree [

	| shapes associations lines edgeBuilder |
	shapes := Dictionary new.
	associations := OrderedCollection new.

	representation shapes: shapes edges: associations.

	edgeBuilder := RSLineBuilder horizontalBezier
		               withHorizontalAttachPoint.

	lines := associations collect: [ :each | 
		         edgeBuilder
			         edgeFrom: (shapes at: each key)
			         to: (shapes at: each value) ].

	RSHorizontalGaussianJitterVanDerPloegTreeLayout
		on: shapes
		edges: lines.

	^ RSComposite new
		  model: self;
		  shapes: shapes , lines;
		  yourself
]
