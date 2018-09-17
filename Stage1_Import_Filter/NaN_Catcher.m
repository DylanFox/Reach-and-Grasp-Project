%Catches errors for larger datasets if there is a missing number (i.e. NaN)
%in the velocity sets 
for i = 1:height(filt_Lf1511)
    [row{i}, ~] = find(isnan(filt_Lf1511.velocitytrials2{i}(2:end-1,2)));
end  
        
        