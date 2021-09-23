"
A CTBinaryTreeAbstractTest is a test class for testing the behavior of CTBinaryTreeAbstract
"
Class {
	#name : #CTBinaryTreeAbstractTest,
	#superclass : #TestCase,
	#traits : 'TIceImagesExporting',
	#classTraits : 'TIceImagesExporting classTrait',
	#instVars : [
		'treeClass'
	],
	#category : #'Containers-BinaryTreeAbstract-Tests'
}

{ #category : #running }
CTBinaryTreeAbstractTest >> setUp [

	super setUp.

	treeClass := CTBinaryTreeAbstract
]

{ #category : #tests }
CTBinaryTreeAbstractTest >> testCreation [

	^ self exportSlotsGraphOf: treeClass empty
]

{ #category : #tests }
CTBinaryTreeAbstractTest >> testPushOrderedInterval [

	| tree |
	tree := (1 to: 20)
		        inject: treeClass empty
		        into: [ :aBinaryTree :each | aBinaryTree push: each ].

	^ self exportSlotsGraphOf: tree
]
