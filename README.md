# GeneticAlgorithms

1 - Load Roassal

```Smalltalk
Gofer it
    smalltalkhubUser: 'ObjectProfile' project: 'Roassal2';
    configurationOf: 'Roassal2';
    loadStable.
```   
 2- Load GA
```Smalltalk 
Metacello new
	baseline: 'GeneticAlgorithms';
	repository: 'github://StevenCostiou/GeneticAlgorithms';
	load.
 ``` 
