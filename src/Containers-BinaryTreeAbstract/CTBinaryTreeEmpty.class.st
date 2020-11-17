Class {
	#name : #CTBinaryTreeEmpty,
	#superclass : #CTBinaryTreeElement,
	#category : #'Containers-BinaryTreeAbstract'
}

{ #category : #testing }
CTBinaryTreeEmpty >> ifEmpty: eBlock ifNotEmpty: neBlock [
	^ eBlock cull: self
]

{ #category : #actions }
CTBinaryTreeEmpty >> mergeBinaryTreeElement: aBTElement inBinaryTree: aBinaryTree [
	^ aBTElement
]

{ #category : #accessing }
CTBinaryTreeEmpty >> root [
	CollectionIsEmpty signal
]
