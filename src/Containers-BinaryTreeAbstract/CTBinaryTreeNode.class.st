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

	^ (Random seed: 13) fairCoin
		  ifHead: [ 
			  | link |
			  link := previousLink
				          mergeBinaryTreeElement: aBTElement
				          inBinaryTree: aBinaryTree.

			  aBinaryTree
				  leftBinaryTreeElement: link
				  value: value
				  rightBinaryTreeElement: nextLink ]
		  ifTail: [ 
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
