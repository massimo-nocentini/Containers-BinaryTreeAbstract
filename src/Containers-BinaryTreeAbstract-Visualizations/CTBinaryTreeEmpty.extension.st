Extension { #name : #CTBinaryTreeEmpty }

{ #category : #'*Containers-BinaryTreeAbstract-Visualizations' }
CTBinaryTreeEmpty >> asShape [

	^ RSCircle new
		  radius: Float goldenRatio double;
		  yourself
]

{ #category : #'*Containers-BinaryTreeAbstract-Visualizations' }
CTBinaryTreeEmpty >> depth [

	^ 0
]
