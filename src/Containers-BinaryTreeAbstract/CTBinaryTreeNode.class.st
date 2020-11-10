Class {
	#name : #CTBinaryTreeNode,
	#superclass : #CTBinaryTreeAbstract,
	#category : #'Containers-BinaryTreeAbstract'
}

{ #category : #testing }
CTBinaryTreeNode >> isEmpty [
	^ false
]

{ #category : #evaluating }
CTBinaryTreeNode >> root [
	^ self value
]
