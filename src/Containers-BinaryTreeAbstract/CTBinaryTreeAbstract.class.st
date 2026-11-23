"
I am a binary tree. I hold its elements in `representation`, which is a `CTBinaryTreeElement`, and leave to it the operations that depend on its shape.

```smalltalk
| tree |
tree := #( 3 1 2 ) asOrderedCollection asBinaryTree: CTBinaryTreeAbstract.
{ tree root. tree pop. tree pop. tree pop. tree isEmpty } ""#(2 2 1 3 true)""
```

- `push:` merges a leaf with my representation.
- `root` answers the value of my root and `pop` removes it too, by merging its two subtrees. Both signal `CollectionIsEmpty` when I am empty.
- `asBinaryTree:` builds an instance of the class it is given: it pushes the elements of a collection one after the other, while those of an `ArrayedCollection` become leaves that are merged by bisection.

My subclasses say which elements they are made of in `binaryTreeElementEmpty` and `binaryTreeElementNode`. They can also override `is:lessThan:` and `is:equalTo:`, with which the elements compare their values; mine are `<` and `=`.

`depth` and `asShapeBinaryTree`, which draws me with Roassal, need the package `Containers-BinaryTreeAbstract-Visualizations`.
"
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
