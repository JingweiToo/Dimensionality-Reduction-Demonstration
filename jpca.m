
function new_feat = jpca(feat,num_pc )
new_feat = pca(feat','NumComponents',num_pc);
end