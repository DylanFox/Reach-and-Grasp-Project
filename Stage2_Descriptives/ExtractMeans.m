function [ x_Avg, x_std ] = ExtractMeans( x )
%Function to quickly convert tables to a matrix to extract the means and SD
%from each column.
Mean_idx = [3, 7,8,10,11,12,14,15,16,18,19]; %remove the vector values (scalar only)   
x = x(:,[Mean_idx]); 
x = table2cell(x);
x = cell2mat(x); 
x_Avg = mean(x);
x_std = std(x);
end

