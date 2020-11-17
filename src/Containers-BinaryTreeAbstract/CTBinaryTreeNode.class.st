Class {
	#name : #CTBinaryTreeNode,
	#superclass : #CTBinaryTreeElement,
	#category : #'Containers-BinaryTreeAbstract'
}

{ #category : #testing }
CTBinaryTreeNode >> ifEmpty: eBlock ifNotEmpty: neBlock [
	^ neBlock cull: self
]

{ #category : #evaluating }
CTBinaryTreeNode >> root [
	^ self value
]
