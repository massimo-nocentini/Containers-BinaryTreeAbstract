Extension { #name : #CTBinaryTreeElement }

{ #category : #'*Containers-BinaryTreeAbstract-Visualizations' }
CTBinaryTreeElement >> asShape [

	self subclassResponsibility
]

{ #category : #'*Containers-BinaryTreeAbstract-Visualizations' }
CTBinaryTreeElement >> shapes: shapes edges: associations [

	shapes at: self put: self asShape
]
