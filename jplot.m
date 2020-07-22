%-------------------------------------------------------------------------%
%  Plot First Three Components source codes demo version                  %
%                                                                         %
%  Programmer: Jingwei Too                                                %
%                                                                         %
%  E-Mail: jamesjames868@gmail.com                                        %
%-------------------------------------------------------------------------%

function jplot(NewFeat,label)
NormFeat=jMinMaxNormalization(NewFeat);
N=size(NormFeat,1);
u=unique(label); nClass=numel(u);
featp=cell(1,nClass); 
for k=1:nClass
	data=zeros(1,3); idx=1;
	for i=1:N
    if label(i)==u(k)
      data(idx,1:3)=NormFeat(i,1:3); 
      idx=idx+1;
    end
  end
  featp{k}=data;
end
for k=1:nClass
  plot3(featp{k}(:,1),featp{k}(:,2),featp{k}(:,3),'*','Linewidth',1.5);
  hold on;
end
grid on; 
end


function NormFeat=jMinMaxNormalization(feat)
mindata=min(feat); maxdata=max(feat);
NormFeat=bsxfun(@rdivide,bsxfun(@minus,feat,mindata),maxdata-mindata);
end

