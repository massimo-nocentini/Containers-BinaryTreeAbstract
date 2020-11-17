Class {
	#name : #CTBinaryTreeAbstract,
	#superclass : #Object,
	#instVars : [
		'representation'
	],
	#category : #'Containers-BinaryTreeAbstract'
}

{ #category : #requirements }
CTBinaryTreeAbstract class >> empty [
	^ self basicNew in: [ :aTree | 
		  aTree
			  representation: aTree binaryTreeElementEmpty;
			  initialize;
			  yourself ]
]

{ #category : #'instance creation' }
CTBinaryTreeAbstract class >> withArrayedCollection: aCollection [
	| tree |
	tree := self new.
	^ tree
		  representation: (aCollection
				   bisect: [ :l :r | 
					   l mergeBinaryTreeElement: r inBinaryTree: tree ]
				   baseBlock: [ :each | tree binaryTreeElementLeaf: each ]);
		  yourself
]

{ #category : #'instance creation' }
CTBinaryTreeAbstract class >> withCollection: aCollection [
	^ aCollection inject: self empty into: [ :aBinaryTree :each | 
		  aBinaryTree
			  push: each;
			  yourself ]
]

{ #category : #creating }
CTBinaryTreeAbstract >> binaryTreeElementEmpty [
	self subclassResponsibility
]

{ #category : #'as yet unclassified' }
CTBinaryTreeAbstract >> binaryTreeElementLeaf: anObject [
	^ self
		  leftBinaryTreeElement: self binaryTreeElementEmpty
		  value: anObject
		  rightBinaryTreeElement: self binaryTreeElementEmpty
]

{ #category : #creating }
CTBinaryTreeAbstract >> leftBinaryTreeElement: leftBinaryTreeElement value: anObject rightBinaryTreeElement: rightBinaryTreeElement [
	self subclassResponsibility
]

{ #category : #accessing }
CTBinaryTreeAbstract >> representation [
	^ representation
]

{ #category : #accessing }
CTBinaryTreeAbstract >> representation: anObject [
	^ representation := anObject
]

{ #category : #accessing }
CTBinaryTreeAbstract >> root [
	^ representation root
]
