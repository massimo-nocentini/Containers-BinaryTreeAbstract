Class {
	#name : #CTBinaryTreeElement,
	#superclass : #CTDoubleValueLink,
	#category : #'Containers-BinaryTreeAbstract'
}

{ #category : #creating }
CTBinaryTreeElement class >> empty [
	^ self left: nil value: nil right: nil
]

{ #category : #creating }
CTBinaryTreeElement class >> leaf: anObject [
	^ self left: nil value: anObject right: nil
]

{ #category : #creating }
CTBinaryTreeElement class >> left: lTree value: anObject right: rTree [
	^ self new
		  previousLink: lTree;
		  value: anObject;
		  nextLink: rTree;
		  yourself
]

{ #category : #comparing }
CTBinaryTreeElement >> = anotherObject [
	^ self == anotherObject
]

{ #category : #comparing }
CTBinaryTreeElement >> hash [
	^ self identityHash
]

{ #category : #testing }
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
