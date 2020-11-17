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

{ #category : #'as yet unclassified' }
CTBinaryTreeEmpty >> popInBinaryTree: aBinaryTree [
	CollectionIsEmpty signal
]

{ #category : #accessing }
CTBinaryTreeEmpty >> root [
	CollectionIsEmpty signal
]
