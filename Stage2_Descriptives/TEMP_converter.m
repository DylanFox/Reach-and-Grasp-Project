function [ New_matrix ] = TEMP_converter( Animal_table,control,hand)
%UNTITLED2 Summary of this function goes here
%   Detailed explanation goes here
New_matrix = zeros(height(Animal_table),9);
for i = 1:height(Animal_table)
    New_matrix(i,2) = hand; % -1 Left; +1 Right
    New_matrix(i,1) = control;  % -1 Control; +1 Lesion
   %Fill out food size
    if Animal_table.foodwidthtrials{i,1} < 7
        New_matrix(i,3) = -1; %-1 Small
        %New_matrix(i,[4:13]) = Animal_table{i,[7,8,10,11,12,14,15,16,18,19]};
        New_matrix(i,4:9) = Animal_table{i,20:25};
    elseif Animal_table.foodwidthtrials{i,1} > 8
        New_matrix(i,3) = 1; % +1 Large
        New_matrix(i,4:9) = Animal_table{i,20:25};
    else
       New_matrix(i,3) = 0;
    end
    
end

end

