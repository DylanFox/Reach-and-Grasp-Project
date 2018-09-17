function [x] = Normalise_Smooth(x)
%This script uses the normalize_var function so make sure 
%it is in the same folder

%-------------------Normalisation------------------------------------
%Normalize time data into a percentage from 0-100
for i = 1:height(x) 
x.Mgatrials{i,1}(:,1) = normalize_var(x.Mgatrials{i,1}(:,1),0,100);
x.velocitytrials2{i,1}(:,1) = normalize_var(x.velocitytrials2{i,1}(:,1),0,100);
x.acceltrials{i,1}(:,1) = normalize_var(x.acceltrials{i,1}(:,1),0,100);
end

%-----------------Filter velocity data---------------------------
%2nd order dual pass low butterworth filter to smooth the data
%for velocity to account for the NaNs use (2:end-1,2) when indexing
% otherwise just use (:,2) for mga trials

sf = 240; %sample freq = 240 (frame rate)
cf = 10; %cutoff freq = 10 (from journals)
[b,a] = butter(1,cf/(sf/2)); 
for i = 1:height(x) 
x.velocitytrials2{i,1}(2:end-1,2) = filtfilt(b,a,x.velocitytrials2{i,1}(2:end-1,2));
x.Mgatrials{i,1}(:,2) = filtfilt(b,a,x.Mgatrials{i,1}(:,2));
x.acceltrials{i,1}(3:end-2,2) = filtfilt(b,a,x.acceltrials{i,1}(3:end-2,2));
end




