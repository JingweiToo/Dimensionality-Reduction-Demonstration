%-------------------------------------------------------------------------%
%  Principle Component Analysis (PCA)  source codes demo version          %
%                                                                         %
%  Programmer: Jingwei Too                                                %
%                                                                         %
%  E-Mail: jamesjames868@gmail.com                                        %
%-------------------------------------------------------------------------%

function NewFeat=jpca(feat,nPC) 
NewFeat=pca(feat','NumComponents',nPC);
end