function [ AVG, STD, SEM ] = TEMP_cell_means(cohort_filtdata, experiment,cohort  )
%UNTITLED3 Summary of this function goes here
%   Detailed explanation goes here
%INPUT 
%Cohort_filtdata is the cell containing the data for each cohort (2x2 cell
%array with experiments on rows and cohort on columns) 
% Experiment: 1 = experiment 1; 2 = experiment 2 
% Cohort: 1 = Control ; 2 = lesion

[numtrials, ~] = size(cohort_filtdata{experiment,cohort});
LS_mga = zeros(numtrials,1);
RL_mga = zeros(numtrials,1);
LL_mga = zeros(numtrials,1);
RS_mga = zeros(numtrials,1);
for i = 1:numtrials 
    if (cohort_filtdata{experiment,cohort}(i,2)) && (cohort_filtdata{experiment,cohort}(i,3)) == -1 %-1 left; +1 right|| -1 small, +1 large
        LS_mga(i,1) = cohort_filtdata{experiment,cohort}(i,5);
        LS_mga = LS_mga(LS_mga ~=0);
    
    elseif (cohort_filtdata{experiment,cohort}(i,2)) && (cohort_filtdata{experiment,cohort}(i,3)) == 1
        RL_mga(i,1) = cohort_filtdata{experiment,cohort}(i,5);
        RL_mga = RL_mga(RL_mga ~=0);
    end 
   if (cohort_filtdata{experiment,cohort}(i,2) == -1) && (cohort_filtdata{experiment,cohort}(i,3) == 1)
        LL_mga(i,1) = cohort_filtdata{experiment,cohort}(i,5);
        LL_mga = LL_mga(LL_mga ~=0);
    
    elseif (cohort_filtdata{experiment,cohort}(i,2) == 1) && (cohort_filtdata{experiment,cohort}(i,3) == -1)
        RS_mga(i,1) = cohort_filtdata{experiment,cohort}(i,5);
        RS_mga = RS_mga(RS_mga ~=0);  
   end 
end 
    AVG = [mean(LS_mga),mean(LL_mga),mean(RS_mga),mean(RL_mga)];
    STD = [std(LS_mga),std(LL_mga),std(RS_mga),std(RL_mga)];
    SEM = [nansem(LS_mga),nansem(LL_mga),nansem(RS_mga),nansem(RL_mga)];

end

