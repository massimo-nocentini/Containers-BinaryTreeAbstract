"
A CTBinaryTreeAbstractTest is a test class for testing the behavior of CTBinaryTreeAbstract
"
Class {
	#name : #CTBinaryTreeAbstractTest,
	#superclass : #TestCase,
	#traits : 'TIceImagesExporting',
	#classTraits : 'TIceImagesExporting classTrait',
	#category : #'Containers-BinaryTreeAbstract-Tests'
}

{ #category : #tests }
CTBinaryTreeAbstractTest >> testCreation [

	^ self exportSlotsGraphOf: CTBinaryTreeAbstract empty
]

{ #category : #tests }
CTBinaryTreeAbstractTest >> testPushOrderedCollection [

	^ self exportSlotsGraphOf:
		  (self tree: (1 to: 20) asOrderedCollection)
]

{ #category : #tests }
CTBinaryTreeAbstractTest >> testPushOrderedInterval [

	^ self exportSlotsGraphOf: (self tree: (1 to: 20) asArray)
]

{ #category : #tests }
CTBinaryTreeAbstractTest >> testPushShuffledCollection [

	| shuffled |
	shuffled := (1 to: 20) asOrderedCollection shuffleBy:
		            (Random seed: 13).

	self
		assert: shuffled
		equals: #( 8 16 20 3 6 5 4 19 7 12 2 10 11 9 13 18 17 15 14 1 )
				asOrderedCollection.

	^ self exportSlotsGraphOf: (self tree: shuffled)
]

{ #category : #tests }
CTBinaryTreeAbstractTest >> testPushShuffledInterval [

	| shuffled |
	shuffled := (1 to: 20) asArray shuffleBy: (Random seed: 13).

	self
		assert: shuffled
		equals: #( 8 16 20 3 6 5 4 19 7 12 2 10 11 9 13 18 17 15 14 1 ).

	^ self exportSlotsGraphOf: (self tree: shuffled)
]

{ #category : #tests }
CTBinaryTreeAbstractTest >> tree: aCollection [

	^ aCollection asBinaryTree
]
