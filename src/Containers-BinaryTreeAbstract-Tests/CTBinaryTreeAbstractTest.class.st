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
CTBinaryTreeAbstractTest >> testPushOrderedInterval [

	| tree |
	tree := (1 to: 20)
		        inject: CTBinaryTreeAbstract empty
		        into: [ :aBinaryTree :each | aBinaryTree push: each ].

	^ self exportSlotsGraphOf: tree
]
