# PCA Dimensionality Reduction Demonstration


![Wheel](https://www.mathworks.com/matlabcentral/mlc-downloads/downloads/96685745-950a-4408-abcd-f8f4e453ef79/90e45ab5-75a8-4a2f-ae14-0295b5755899/images/screenshot.PNG)


## Introduction
* A program for feature reduction, principal component analysis ( PCA ) is offered   
* The < Main.m file > illustrates the example of how PCA can reduce the number of features using benchmark data-set
* I also demo how to plot the first three components for PCA


## Input
* *feat*     : feature vector ( Instances *x* Features )
* *label*    : label vector ( Instances *x* 1 )


## Output
* *new_feat* : new features ( Instances *x* Features )


## # Example 
```code
% Benchmark data set 
load iris.mat

% Set number of principal compoments  
num_pc   = 3; 
% Principal Component Analysis
new_feat = jpca(feat,num_pc);

% Plot first three principal components
jplot(new_feat,label);
legend({'setosa','versicolor','virginica'}); 
xlabel('PC 1'); ylabel('PC 2'); zlabel('PC 3');
```


