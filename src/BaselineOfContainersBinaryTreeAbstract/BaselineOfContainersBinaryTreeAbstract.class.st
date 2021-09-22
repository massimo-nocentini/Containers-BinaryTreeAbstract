Class {
	#name : #BaselineOfContainersBinaryTreeAbstract,
	#superclass : #BaselineOf,
	#category : #BaselineOfContainersBinaryTreeAbstract
}

{ #category : #baselines }
BaselineOfContainersBinaryTreeAbstract >> baseline: spec [

	<baseline>
	spec for: #common do: [ 
		spec
			baseline: 'ContainersLinks'
			with: [ 
			spec repository: 'github://massimo-nocentini/Containers-Links' ].

		"Packages"
		spec
			package: 'Containers-BinaryTreeAbstract';
			package: 'Containers-BinaryTreeAbstract-Visualizations' ]
]
