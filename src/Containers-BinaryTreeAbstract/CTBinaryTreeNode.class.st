"
I am a node: a value with a left and a right subtree.

When merged with another element I stay at the root, and the element is merged into my left subtree or into my right one according to the toss of a fair coin; the toss is drawn from a new `Random seed: 13` at each step. My subclasses override the merge to keep an order of their own. Without my root, what remains is the merge of my two subtrees.
"
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
