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

	^ self new yourself: [ :aTree | 
		  aTree representation: aTree binaryTreeElementEmpty ]
]

{ #category : #'instance creation' }
CTBinaryTreeAbstract class >> withArrayedCollection: aCollection [

	^ aCollection ifEmpty: [ self empty ] ifNotEmpty: [ 
		  self new yourself: [ :tree | 
			  tree representation: (aCollection
					   bisect: [ :l :r | 
					   l mergeBinaryTreeElement: r inBinaryTree: tree ]
					   baseBlock: [ :each | tree binaryTreeElementLeaf: each ]) ] ]
]

{ #category : #'instance creation' }
CTBinaryTreeAbstract class >> withCollection: aCollection [

	^ aCollection
		  inject: self empty
		  into: [ :aBinaryTree :each | aBinaryTree push: each ]
]

{ #category : #creating }
CTBinaryTreeAbstract >> binaryTreeElementEmpty [

	^ CTBinaryTreeEmpty new
]

{ #category : #creating }
CTBinaryTreeAbstract >> binaryTreeElementLeaf: anObject [
	^ self
		  leftBinaryTreeElement: self binaryTreeElementEmpty
		  value: anObject
		  rightBinaryTreeElement: self binaryTreeElementEmpty
]

{ #category : #creating }
CTBinaryTreeAbstract >> binaryTreeElementNode [

	^ CTBinaryTreeNode new
]

{ #category : #accessing }
CTBinaryTreeAbstract >> depth [

	^ representation depth
]

{ #category : #testing }
CTBinaryTreeAbstract >> ifEmpty: eBlock ifNotEmpty: neBlock [

	^ representation ifEmpty: eBlock ifNotEmpty: neBlock
]

{ #category : #testing }
CTBinaryTreeAbstract >> is: anObject equalTo: anotherObject [
	^ anObject = anotherObject
]

{ #category : #testing }
CTBinaryTreeAbstract >> is: anObject lessThan: anotherObject [
	^ anObject < anotherObject
]

{ #category : #testing }
CTBinaryTreeAbstract >> isEmpty [

	^ representation isEmpty
]

{ #category : #creating }
CTBinaryTreeAbstract >> leftBinaryTreeElement: l value: v rightBinaryTreeElement: r [
	^ self binaryTreeElementNode
		  previousLink: l;
		  value: v;
		  nextLink: r;
		  yourself
]

{ #category : #accessing }
CTBinaryTreeAbstract >> pop [

	^ self root yourself: [ 
		  representation := representation popInBinaryTree: self ]
]

{ #category : #adding }
CTBinaryTreeAbstract >> push: anObject [

	| leaf |
	leaf := self binaryTreeElementLeaf: anObject.

	representation := leaf
		                  mergeBinaryTreeElement: representation
		                  inBinaryTree: self
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
