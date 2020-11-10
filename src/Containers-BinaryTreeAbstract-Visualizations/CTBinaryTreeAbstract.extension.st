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
CTBinaryTreeAbstract >> asSlotsGroupRecursiveKnownReferences: aSet [
	"This message should be overridden by any subclass that has a recursive structure
	 that would be visualized; in particular, the layout block has to be plugged in."

	^ self
		  asSlotsGroupRecursiveKnownReferences: aSet
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
CTBinaryTreeAbstract >> instVarsNamesOrderedCollection [
	^ { 
		  #previousLink asReflexiveAssociation.
		  #value asReflexiveAssociation.
		  #nextLink asReflexiveAssociation }
]

{ #category : #'*Containers-BinaryTreeAbstract-Visualizations' }
CTBinaryTreeAbstract >> loopingBackwardControlPointsControllerOverShapes: shapes [
	^ self defaultControlPointsControllerOverShapes: shapes
]

{ #category : #'*Containers-BinaryTreeAbstract-Visualizations' }
CTBinaryTreeAbstract >> loopingForwardControlPointsControllerOverShapes: shapes [
	^ self defaultControlPointsControllerOverShapes: shapes
]
