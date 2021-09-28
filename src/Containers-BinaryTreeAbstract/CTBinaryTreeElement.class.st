Class {
	#name : #CTBinaryTreeElement,
	#superclass : #CTDoubleValueLink,
	#category : #'Containers-BinaryTreeAbstract'
}

{ #category : #comparing }
CTBinaryTreeElement >> = anotherObject [
	^ self == anotherObject
]

{ #category : #'as yet unclassified' }
CTBinaryTreeElement >> depth [

	self subclassResponsibility
]

{ #category : #comparing }
CTBinaryTreeElement >> hash [
	^ self identityHash
]

{ #category : #'as yet unclassified' }
CTBinaryTreeElement >> ifEmpty: eBlock ifNotEmpty: neBlock [

	self subclassResponsibility
]

{ #category : #testing }
CTBinaryTreeElement >> isEmpty [
	^ self ifEmpty: [ true ] ifNotEmpty: [ false ]
]

{ #category : #actions }
CTBinaryTreeElement >> mergeBinaryTreeElement: aBTElement inBinaryTree: aBinaryTree [
	self subclassResponsibility
]

{ #category : #'as yet unclassified' }
CTBinaryTreeElement >> popInBinaryTree: aBinaryTree [
	self subclassResponsibility
]

{ #category : #evaluating }
CTBinaryTreeElement >> root [
	self subclassResponsibility
]
