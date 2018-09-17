function [small_mean, small_std, large_mean, large_std] = SplitSize(x, smallsize, largesize)
%Used to split and find descriptives for each condition used in the
%experiment (i.e. small and large foodsizes)

%Smallsize variable = The object size that is small (i.e <5.5) 
%Largesize variable = The object size that is large (i.e >14) 

Mean_idx = [3, 7,8,10,11,12,14,15,16,18,19]; %select only scalar values
x = x(:,Mean_idx);

%Convert to matrix for mean/std calcs
x = table2cell(x);
x = cell2mat(x);

x_small = [];
x_large = [];
numtrials = size(x);
for i = 1:numtrials
    if x(i,1) < smallsize
      x_small(i,:) = x(i,:);  %% NEEDS WORK REMOVING ROWS WITH ZERO
        
    elseif x(i,1) > largesize
        x_large(i,:) = x(i,:);    
    end
end

small_mean = mean(x_small);
small_std = std(x_small);
large_mean = mean(x_large);
large_std = std(x_large);
end




