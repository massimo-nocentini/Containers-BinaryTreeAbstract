Class {
	#name : #CTBinaryTreeNode,
	#superclass : #CTBinaryTreeAbstract,
	#category : #'Containers-BinaryTreeAbstract'
}

{ #category : #testing }
CTBinaryTreeNode >> ifEmpty: eBlock ifNotEmpty: neBlock [
	^ neBlock cull: self
]

{ #category : #testing }
CTBinaryTreeNode >> isEmpty [
	^ false
]

{ #category : #evaluating }
CTBinaryTreeNode >> root [
	^ self value
]
