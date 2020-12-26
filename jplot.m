function jplot(new_feat,label)
norm_feat = jMinMaxNormalization(new_feat);
num_data  = size(norm_feat,1);
u         = unique(label); 
num_class = numel(u);
featp     = cell(1,num_class); 
for k = 1:num_class
	data = zeros(1,3);
  idx  = 1;
	for i = 1:num_data
    if label(i) == u(k)
      data(idx,1:3) = norm_feat(i,1:3); 
      idx = idx + 1;
    end
  end
  featp{k} = data;
end
for k = 1:num_class
  plot3(featp{k}(:,1),featp{k}(:,2),featp{k}(:,3),'*','Linewidth',1.5);
  hold on;
end
grid on; 
end


function norm_feat = jMinMaxNormalization(feat)
min_data  = min(feat);
max_data  = max(feat);
norm_feat = bsxfun(@rdivide,bsxfun(@minus,feat,min_data),max_data - min_data);
end

