Extension { #name : #CTBinaryTreeElement }

{ #category : #'*Containers-BinaryTreeAbstract-Visualizations' }
CTBinaryTreeElement >> asSlotsGroupKnownReferences: aSet recursiveReferences: refs [
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
CTBinaryTreeElement >> asSlotsGroupRecursiveKnownReferences: aSet [
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
CTBinaryTreeElement >> defaultControlPointsControllerOverShapes: shapes [
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
CTBinaryTreeElement >> instVarsNamesOrderedCollection [
	^ { 
		  #previousLink asReflexiveAssociation.
		  #value asReflexiveAssociation.
		  #nextLink asReflexiveAssociation }
]

{ #category : #'*Containers-BinaryTreeAbstract-Visualizations' }
CTBinaryTreeElement >> loopingBackwardControlPointsControllerOverShapes: shapes [
	^ self defaultControlPointsControllerOverShapes: shapes
]

{ #category : #'*Containers-BinaryTreeAbstract-Visualizations' }
CTBinaryTreeElement >> loopingForwardControlPointsControllerOverShapes: shapes [
	^ self defaultControlPointsControllerOverShapes: shapes
]

{ #category : #'*Containers-BinaryTreeAbstract-Visualizations' }
CTBinaryTreeElement >> shapes: shapes edges: associations [

	shapes at: self put: self asShape
]
