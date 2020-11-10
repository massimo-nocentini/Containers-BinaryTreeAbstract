Extension { #name : #CTDoubleValueLink }

{ #category : #'*Containers-BinaryTreeAbstract-Visualizations' }
CTDoubleValueLink >> recursiveReferences [
	| stack |
	stack := CTLinkedStoragePool stack new.
	stack push: self.
	^ Array streamContents: [ :s | 
		  [ stack isEmpty ] whileFalse: [ 
			  | node |
			  node := stack pop.
			  s nextPut: node.
			  node previousLink ifNotNil: [ :l | stack push: l ].
			  node nextLink ifNotNil: [ :l | stack push: l ] ] ]
]
