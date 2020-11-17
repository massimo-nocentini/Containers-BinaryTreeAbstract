Extension { #name : #ArrayedCollection }

{ #category : #'*Containers-BinaryTreeAbstract' }
ArrayedCollection >> asBinaryTree: aClass [
	^ aClass withArrayedCollection: self
]
