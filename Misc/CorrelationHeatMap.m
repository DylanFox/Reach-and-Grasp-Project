function [ Animal, RHO, p_val ] = CorrelationHeatMap( Animal )

%   Small function to create a correlation heatmap between multiple
%   variables in the reach and grasp protocols 

%For now,  be sure to format data from the tables to a matrix or cell array
%as the 'corr' function is unlikely to work for tables 

Animal = table2cell(Animal);  %make sure table is stripped to include parts you want 
Animal = cell2mat(Animal);
[RHO, PVAL] = corr(Animal);
figure 
imagesc(RHO)
colorbar

end

