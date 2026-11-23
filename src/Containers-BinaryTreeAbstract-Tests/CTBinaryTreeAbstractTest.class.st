"
A `CTBinaryTreeAbstractTest` is a test class for testing the behavior of `CTBinaryTreeAbstract`
"
Class {
	#name : #CTBinaryTreeAbstractTest,
	#superclass : #TestCase,
	#traits : 'TIceImagesExporting',
	#classTraits : 'TIceImagesExporting classTrait',
	#category : #'Containers-BinaryTreeAbstract-Tests'
}

{ #category : #testing }
CTBinaryTreeAbstractTest class >> isAbstract [
	"My subclasses answer the concrete tree to test in #tree:."

	^ self == CTBinaryTreeAbstractTest
]

{ #category : #tests }
CTBinaryTreeAbstractTest >> testCreation [

	^ self exportSlotsGraphOf: (self tree: {  })
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
		equals: #( 14 10 15 16 9 18 19 1 13 20 8 11 5 12 7 4 2 17 6 3 )
				asOrderedCollection.

	^ self exportSlotsGraphOf: (self tree: shuffled)
]

{ #category : #tests }
CTBinaryTreeAbstractTest >> testPushShuffledInterval [

	| shuffled |
	shuffled := (1 to: 20) asArray shuffleBy: (Random seed: 13).

	self
		assert: shuffled
		equals: #( 14 10 15 16 9 18 19 1 13 20 8 11 5 12 7 4 2 17 6 3 ).

	^ self exportSlotsGraphOf: (self tree: shuffled)
]

{ #category : #tests }
CTBinaryTreeAbstractTest >> tree: aCollection [

	^ aCollection asBinaryTree
]
