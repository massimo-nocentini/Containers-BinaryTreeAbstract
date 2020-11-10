Extension { #name : #CTBinaryTreeNode }

{ #category : #'*Containers-BinaryTreeAbstract-Visualizations' }
CTBinaryTreeNode >> edges: edges parent: aNode [
	| leftEdges rightEdges |
	rightEdges := nextLink edges: edges parent: self.
	leftEdges := previousLink edges: rightEdges parent: self.
	^ ValueLink new
		  value: aNode -> self;
		  nextLink: leftEdges;
		  yourself
]
