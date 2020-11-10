Class {
	#name : #CTBinaryTreeEmpty,
	#superclass : #CTBinaryTreeAbstract,
	#category : #'Containers-BinaryTreeAbstract'
}

{ #category : #testing }
CTBinaryTreeEmpty >> isEmpty [
	^ true
]

{ #category : #actions }
CTBinaryTreeEmpty >> mergeBinaryTree: aTree [
	^ aTree
]

{ #category : #accessing }
CTBinaryTreeEmpty >> root [
	CollectionIsEmpty signal
]
