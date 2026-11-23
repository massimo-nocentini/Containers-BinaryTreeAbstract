"
I am an element of a `CTBinaryTreeAbstract`: a `CTBinaryTreeNode` or a `CTBinaryTreeEmpty`. As a double link I keep the left subtree in `previousLink`, the right one in `nextLink` and what I hold in `value`.

I am equal only to myself. My subclasses implement:

- `ifEmpty:ifNotEmpty:`, from which comes `isEmpty`;
- `root`, the value at the root;
- `mergeBinaryTreeElement:inBinaryTree:`, the merge of two elements;
- `popInBinaryTree:`, the element that remains without the root;
- `depth`, the number of levels.

The tree given as last argument of the merge and of the pop creates the new elements.
"
Class {
	#name : #CTBinaryTreeElement,
	#superclass : #CTDoubleValueLink,
	#category : #'Containers-BinaryTreeAbstract'
}

{ #category : #comparing }
CTBinaryTreeElement >> = anotherObject [
	^ self == anotherObject
]

{ #category : #'as yet unclassified' }
CTBinaryTreeElement >> depth [

	self subclassResponsibility
]

{ #category : #comparing }
CTBinaryTreeElement >> hash [
	^ self identityHash
]

{ #category : #'as yet unclassified' }
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
