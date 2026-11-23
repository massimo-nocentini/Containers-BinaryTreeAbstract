"
I am the empty tree: merged with another element I answer that element, my depth is 0, and I signal `CollectionIsEmpty` when asked for my root or to pop it.
"
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
