Extension { #name : #Collection }

{ #category : #'*Containers-BinaryTreeAbstract' }
Collection >> asBinaryTree: aClass [
	^ aClass withCollection: self
]
