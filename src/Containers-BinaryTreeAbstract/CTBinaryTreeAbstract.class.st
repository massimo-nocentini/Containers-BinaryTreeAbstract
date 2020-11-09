Class {
	#name : #CTBinaryTreeAbstract,
	#superclass : #CTDoubleValueLink,
	#category : #'Containers-BinaryTreeAbstract'
}

{ #category : #comparing }
CTBinaryTreeAbstract >> = anotherObject [
	^ self == anotherObject
]

{ #category : #comparing }
CTBinaryTreeAbstract >> hash [
	^ self identityHash
]
