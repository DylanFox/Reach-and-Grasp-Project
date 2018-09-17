function [ cohort_hand, fruitsize ] = Tracker_Perm_Boot( Lcontrol,Llesion,Rcontrol,Rlesion )
% Creates two tables based on the already imported tracker data
%
% Table 1) Separates cohort, hand use and grip aperture for each trial
% Table 2) Separates food size and success of that trial

%%NOTES;  Once corrected and failed trials are analysed and added to the
%%dataset, the success rate parameter will need to be adjusted

%%L Control

%preallocate table variables
Cohort = zeros(height(Lcontrol),1);
Handedness = zeros(height(Lcontrol),1);
Grip_aperture = zeros(height(Lcontrol),1);

small_foodwidth = zeros(height(Lcontrol),1);
large_foodwidth = zeros(height(Lcontrol),1);
success_rate = zeros(height(Lcontrol),1);

%Create tables
Lcontrol_cohort_hand = table(Cohort, Handedness, Grip_aperture);
Lcontrol_fruitsize = table(small_foodwidth, large_foodwidth, success_rate);

Lcontrol_cohort_hand.Grip_aperture = Lcontrol.mMGA; % Y-value = mMGA
for i = 1:height(Lcontrol)
    Lcontrol_cohort_hand.Handedness(i) = -1; % -1 Left; +1 Right
    Lcontrol_cohort_hand.Cohort(i) = -1;  % -1 Control; +1 Lesion
    %Fill out food size
    Lcontrol_fruitsize.success_rate(i,1) = 1; % -1 Fail; +1 Success
    if Lcontrol.foodwidthtrials{i,1} < 7
        Lcontrol_fruitsize.small_foodwidth(i,1) = 1;
    elseif Lcontrol.foodwidthtrials{i,1} > 8
        Lcontrol_fruitsize.large_foodwidth(i,1) = 1;
    else
        Lcontrol_fruitsize.small_foodwidth(i,1) = 0;
        Lcontrol_fruitsize.large_foodwidth(i,1) = 0;
    end
    
end

%% Llesion
%preallocate table variables
Cohort = zeros(height(Llesion),1);
Handedness = zeros(height(Llesion),1);
Grip_aperture = zeros(height(Llesion),1);

small_foodwidth = zeros(height(Llesion),1);
large_foodwidth = zeros(height(Llesion),1);
success_rate = zeros(height(Llesion),1);

%Set up tables
Llesion_cohort_hand = table(Cohort, Handedness, Grip_aperture);
Llesion_fruitsize = table(small_foodwidth, large_foodwidth, success_rate);

Llesion_cohort_hand.Grip_aperture = Llesion.mMGA; % Y-value = mMGA
for i = 1:height(Llesion)
    Llesion_cohort_hand.Handedness(i) = -1; % -1 Left; +1 Right
    Llesion_cohort_hand.Cohort(i) = 1;  % -1 Control; +1 Lesion
   Llesion_fruitsize.success_rate(i,1) = 1; % -1 Fail; +1 Success
    %Fill out food size
    if Llesion.foodwidthtrials{i,1} < 7
        Llesion_fruitsize.small_foodwidth(i,1) = 1;
    elseif Llesion.foodwidthtrials{i,1} > 8
        Llesion_fruitsize.large_foodwidth(i,1) = 1;
    else
        Llesion_fruitsize.small_foodwidth(i,1) = 0;
        Llesion_fruitsize.large_foodwidth(i,1) = 0;
    end
    
end

%% RControl

%preallocate table variables
Cohort = zeros(height(Rcontrol),1);
Handedness = zeros(height(Rcontrol),1);
Grip_aperture = zeros(height(Rcontrol),1);

small_foodwidth = zeros(height(Rcontrol),1);
large_foodwidth = zeros(height(Rcontrol),1);
success_rate = zeros(height(Rcontrol),1);

%Set up tables
Rcontrol_cohort_hand = table(Cohort, Handedness, Grip_aperture);
Rcontrol_fruitsize = table(small_foodwidth, large_foodwidth, success_rate);

Rcontrol_cohort_hand.Grip_aperture = Rcontrol.mMGA; % Y-value = mMGA
for i = 1:height(Rcontrol)
    Rcontrol_cohort_hand.Handedness(i) = 1; % -1 Left; +1 Right
    Rcontrol_cohort_hand.Cohort(i) = -1;  % -1 Control; +1 Lesion
    Rcontrol_fruitsize.success_rate(i,1) = 1; % -1 Fail; +1 Success
    %Fill out food size
    if Rcontrol.foodwidthtrials{i,1} < 7
        Rcontrol_fruitsize.small_foodwidth(i,1) = 1;
    elseif Rcontrol.foodwidthtrials{i,1} > 8
        Rcontrol_fruitsize.large_foodwidth(i,1) = 1;
    else
        Rcontrol_fruitsize.small_foodwidth(i,1) = 0;
        Rcontrol_fruitsize.large_foodwidth(i,1) = 0;
    end
    
end

%% Rlesion

%preallocate table variables
Cohort = zeros(height(Rlesion),1);
Handedness = zeros(height(Rlesion),1);
Grip_aperture = zeros(height(Rlesion),1);

small_foodwidth = zeros(height(Rlesion),1);
large_foodwidth = zeros(height(Rlesion),1);
success_rate = zeros(height(Rlesion),1);

%Set up tables
Rlesion_cohort_hand = table(Cohort, Handedness, Grip_aperture);
Rlesion_fruitsize = table(small_foodwidth, large_foodwidth, success_rate);

%Translate tracker data to these new tables
Rlesion_cohort_hand.Grip_aperture = Rlesion.mMGA; % Y-value = mMGA
for i = 1:height(Rlesion)
    Rlesion_cohort_hand.Handedness(i) = 1; % -1 Left; +1 Right
    Rlesion_cohort_hand.Cohort(i) = 1;  % -1 Control; +1 Lesion
   Rlesion_fruitsize.success_rate(i,1) = 1; % -1 Fail; +1 Success
    %Fill out food size
    if Rlesion.foodwidthtrials{i,1} < 7
        Rlesion_fruitsize.small_foodwidth(i,1) = 1;
    elseif Rlesion.foodwidthtrials{i,1} > 8
        Rlesion_fruitsize.large_foodwidth(i,1) = 1;
    else
        Rlesion_fruitsize.small_foodwidth(i,1) = 0;
        Rlesion_fruitsize.large_foodwidth(i,1) = 0;
    end
    
end

%% Vertically Concatenate all tables
cohort_hand = vertcat(Lcontrol_cohort_hand,Llesion_cohort_hand,Rcontrol_cohort_hand,Rlesion_cohort_hand);
fruitsize = vertcat(Lcontrol_fruitsize,Llesion_fruitsize, Rcontrol_fruitsize, Rlesion_fruitsize);


end

