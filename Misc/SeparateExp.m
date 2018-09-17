function [ Exp1, Exp2 ] = SeparateExp( PooledExp )
%   Temporary function to separate experiment one looking at efron blocks 
% and the second experiment looking at different volume food sizes 
ntrials = height(PooledExp); 
Exp1 = table();
Exp2 = table();
for i = 1:ntrials
    if (PooledExp.foodwidthtrials{i,1} <= 7) && (PooledExp.foodwidthtrials{i,1} >= 5.5) 
        Exp1{i,:} = PooledExp{i,:}; 
    elseif (PooledExp.foodwidthtrials{i,1} <= 11) && (PooledExp.foodwidthtrials{i,1} >= 9)
         Exp1{i,:} = PooledExp{i,:}; 
    else
        Exp2{i,:} = PooledExp{i,:}; 
    end 
end 

end

