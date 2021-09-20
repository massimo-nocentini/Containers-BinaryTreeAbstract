Class {
	#name : #CTBinaryTreeNode,
	#superclass : #CTBinaryTreeElement,
	#category : #'Containers-BinaryTreeAbstract'
}

{ #category : #testing }
CTBinaryTreeNode >> ifEmpty: eBlock ifNotEmpty: neBlock [
	^ neBlock cull: self
]

{ #category : #actions }
CTBinaryTreeNode >> mergeBinaryTreeElement: aBTElement inBinaryTree: aBinaryTree [

	^ (RandomBernoulli new
		   p: 0.5;
		   next) = 0
		  ifTrue: [ 
			  | link |
			  link := previousLink
				          mergeBinaryTreeElement: aBTElement
				          inBinaryTree: aBinaryTree.

			  aBinaryTree
				  leftBinaryTreeElement: link
				  value: value
				  rightBinaryTreeElement: nextLink ]
		  ifFalse: [ 
			  | link |
			  link := nextLink
				          mergeBinaryTreeElement: aBTElement
				          inBinaryTree: aBinaryTree.

			  aBinaryTree
				  leftBinaryTreeElement: previousLink
				  value: value
				  rightBinaryTreeElement: link ]
]

{ #category : #removing }
CTBinaryTreeNode >> popInBinaryTree: aBinaryTree [
	^ previousLink
		  mergeBinaryTreeElement: nextLink
		  inBinaryTree: aBinaryTree
]

{ #category : #evaluating }
CTBinaryTreeNode >> root [
	^ self value
]
