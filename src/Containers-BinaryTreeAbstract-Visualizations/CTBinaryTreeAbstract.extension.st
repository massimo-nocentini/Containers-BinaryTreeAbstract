Extension { #name : #CTBinaryTreeAbstract }

{ #category : #'*Containers-BinaryTreeAbstract-Visualizations' }
CTBinaryTreeAbstract >> asSlotsGroupKnownReferences: aSet recursiveReferences: refs [
	^ self
		  asSlotsGroupKnownReferences: aSet
		  recursiveReferences: refs
		  layoutBlock: [ :shapes | 
			  | eb |
			  eb := (RSEdgeBuilder new: RSArrowedLine new)
				        color: Color gray;
				        shapes: shapes;
				        yourself.
			  RSTreeLayout
				  on: shapes
				  edges: (eb connectTo: #previousLink) , (eb connectTo: #nextLink) ]
]

{ #category : #'*Containers-BinaryTreeAbstract-Visualizations' }
CTBinaryTreeAbstract >> defaultControlPointsControllerOverShapes: shapes [
	^ RSBlockCPController new
		  block: [ :edge | 
			  | f t ap |
			  ap := edge attachPoint.
			  f := ap startingPointOf: edge.
			  t := ap endingPointOf: edge.
			  Array with: f with: t ];
		  yourself
]

{ #category : #'*Containers-BinaryTreeAbstract-Visualizations' }
CTBinaryTreeAbstract >> loopingBackwardControlPointsControllerOverShapes: shapes [
	^ self defaultControlPointsControllerOverShapes: shapes
]

{ #category : #'*Containers-BinaryTreeAbstract-Visualizations' }
CTBinaryTreeAbstract >> loopingForwardControlPointsControllerOverShapes: shapes [
	^ self defaultControlPointsControllerOverShapes: shapes
]

{ #category : #'*Containers-BinaryTreeAbstract-Visualizations' }
CTBinaryTreeAbstract >> recursiveReferences [
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
