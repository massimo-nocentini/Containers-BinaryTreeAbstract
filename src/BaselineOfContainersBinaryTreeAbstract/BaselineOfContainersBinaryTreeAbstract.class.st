"
I am the baseline of `Containers-BinaryTreeAbstract`: I load the packages `Containers-BinaryTreeAbstract`, `Containers-BinaryTreeAbstract-Visualizations` and `Containers-BinaryTreeAbstract-Tests`, and the project `Containers-Links` that they require.

```smalltalk
[ Metacello new
	baseline: 'ContainersBinaryTreeAbstract';
	githubUser: 'massimo-nocentini'
		project: 'Containers-BinaryTreeAbstract'
		commitish: 'master'
		path: 'src';
	load ]
		on: MCMergeOrLoadWarning
		do: [ :warning | warning load ]
```
"
Class {
	#name : #BaselineOfContainersBinaryTreeAbstract,
	#superclass : #BaselineOf,
	#category : #BaselineOfContainersBinaryTreeAbstract
}

{ #category : #baselines }
BaselineOfContainersBinaryTreeAbstract >> baseline: spec [

	<baseline>
	spec for: #common do: [ "Externals."
		spec
			baseline: 'ContainersLinks'
			with: [ spec repository: 'github://massimo-nocentini/Containers-Links:master/src' ].

		"Packages"
		spec
			package: 'Containers-BinaryTreeAbstract'
			with: [ spec requires: #( 'ContainersLinks' ) ];
			package: 'Containers-BinaryTreeAbstract-Tests'
			with: [ spec requires: #( 'Containers-BinaryTreeAbstract' ) ];
			package: 'Containers-BinaryTreeAbstract-Visualizations'
			with: [ spec requires: #( 'Containers-BinaryTreeAbstract' ) ] ]
]
