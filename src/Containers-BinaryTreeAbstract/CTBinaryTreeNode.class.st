Class {
	#name : #CTBinaryTreeNode,
	#superclass : #CTBinaryTreeElement,
	#category : #'Containers-BinaryTreeAbstract'
}

{ #category : #testing }
CTBinaryTreeNode >> ifEmpty: eBlock ifNotEmpty: neBlock [
	^ neBlock cull: self
]

{ #category : #removing }
CTBinaryTreeNode >> popInBinaryTree: aBinaryTree [
	^ previousLink
		  mergeBinaryTreeElement: nextLink
		  inBinaryTree: aBinaryTree
]

{ #category : #evaluating }
CTBinaryTreeNode >> root [
	^ self value
]
