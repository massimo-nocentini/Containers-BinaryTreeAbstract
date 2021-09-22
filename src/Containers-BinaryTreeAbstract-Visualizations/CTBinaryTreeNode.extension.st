Extension { #name : #CTBinaryTreeNode }

{ #category : #'*Containers-BinaryTreeAbstract-Visualizations' }
CTBinaryTreeNode >> asShape [

	^ RSLabel new
		  model: self value;
		  fontName: 'Source Code Pro';
		  yourself
]

{ #category : #'*Containers-BinaryTreeAbstract-Visualizations' }
CTBinaryTreeNode >> shapes: shapes edges: associations [

	super shapes: shapes edges: associations.

	associations
		add: self -> previousLink;
		add: self -> nextLink.
		
	previousLink shapes: shapes edges: associations.
	nextLink shapes: shapes edges: associations
]
