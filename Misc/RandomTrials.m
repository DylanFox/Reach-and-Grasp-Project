function trial_random = RandomTrials(numTrials, numconditions)
%Basic function to randomise trial conditions 

rng('shuffle')
trial_random = randi(numconditions,numTrials,1);
%Hand = randi(2,20,1);
%FoodSize = randi(3,20,1);
%Trial = table(Hand,FoodSize); 



    