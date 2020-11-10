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

{ #category : #removing }
CTBinaryTreeEmpty >> pop [
	CollectionIsEmpty signal
]

{ #category : #accessing }
CTBinaryTreeEmpty >> root [
	CollectionIsEmpty signal
]
