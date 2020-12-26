%---------------------------------------------------------------------%
%  Dimensionality Reduction source codes demo version                 %
%---------------------------------------------------------------------%


%---Input--------------------------------------------------------------
% feat     : feature vector (instances x features)
% num_pc   : number of principal components 

%---Output-------------------------------------------------------------
% new_feat : New features (instances x features)
%----------------------------------------------------------------------


%% Principle Component Analysis
clc, clear, close 

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






