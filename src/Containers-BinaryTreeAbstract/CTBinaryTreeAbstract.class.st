Class {
	#name : #CTBinaryTreeAbstract,
	#superclass : #CTDoubleValueLink,
	#category : #'Containers-BinaryTreeAbstract'
}

{ #category : #creating }
CTBinaryTreeAbstract class >> empty [
	^ self left: nil value: nil right: nil
]

{ #category : #creating }
CTBinaryTreeAbstract class >> leaf: anObject [
	^ self left: nil value: anObject right: nil
]

{ #category : #creating }
CTBinaryTreeAbstract class >> left: lTree value: anObject right: rTree [
	^ self new
		  previousLink: lTree;
		  value: anObject;
		  nextLink: rTree;
		  yourself
]

{ #category : #comparing }
CTBinaryTreeAbstract >> = anotherObject [
	^ self == anotherObject
]

{ #category : #comparing }
CTBinaryTreeAbstract >> hash [
	^ self identityHash
]

{ #category : #testing }
CTBinaryTreeAbstract >> isEmpty [
	self subclassResponsibility
]

{ #category : #actions }
CTBinaryTreeAbstract >> mergeBinaryTree: aTree [
	self subclassResponsibility
]

{ #category : #evaluating }
CTBinaryTreeAbstract >> root [
	self subclassResponsibility
]
