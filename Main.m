%-------------------------------------------------------------------------%
%  Dimensionality Reduction source codes demo version                     %
%                                                                         %
%  Programmer: Jingwei Too                                                %
%                                                                         %
%  E-Mail: jamesjames868@gmail.com                                        %
%-------------------------------------------------------------------------%


%---Input------------------------------------------------------------------
% feat: feature vector (instances x features)
% nPC : number of principal components 
%---Output-----------------------------------------------------------------
% NewFeat: New features (instances x features)
%--------------------------------------------------------------------------

%% Principle Component Analysis
clc, clear, close 
% Benchmark data set 
load iris.mat;
% Set number of principal compoments  
nPC=3; 
% Principle Component Analysis
NewFeat=jpca(feat,nPC);
% Plot PCA
jplot(NewFeat,label); legend({'setosa','versicolor','virginica'}); 
xlabel('PC 1'); ylabel('PC 2'); zlabel('PC 3');






