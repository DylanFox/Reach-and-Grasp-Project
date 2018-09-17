function [x] = ExtractMaxValues(x)
%Loops through each table to enter in MGA, mVelocity and time to each (%)
% from each trial (row) 
nfiles = height(x);
sec_frame = 1/240; %seconds per frame
for i = 1:nfiles

%------------Total Time-------------------
x.totaltime(i)= (size(x.Mgatrials{i,1}(:,1),1)*sec_frame*1000);

%------------MGA-------------------
[x.mMGA(i), x.mMGAFrame(i)] = max(x.Mgatrials{i,1}(:,2)); %find mMGA/frame
%a and b corrospond to filling T2MGA trials
a = find(x.Mgatrials{i,1}(:,2)== max(x.Mgatrials{i,1}(:,2)));
b = length(x.Mgatrials{i,1}(:,2));
x.T2mMGA_pcnt(i) = a/b*100; %time 2 peak(%)
x.T2mMGA_ms(i) = x.mMGAFrame(i)*sec_frame*1000; %time to peak (ms) 
x.mMGA2end_ms(i) = x.totaltime(i) - x.T2mMGA_ms(i); %Peak to end (ms) 
x.mMGA2end_pcnt(i) = 100 - x.T2mMGA_pcnt(i); %Peak to end (%)

%------------Velocity-------------------
%[x.mVeloc(i), x.mVelocFrame(i)] = max(x.velocitytrials{i,1}(:,4)); %find mVelocity/frame
[x.mVeloc(i), x.mVelocFrame(i)] = max(x.velocitytrials2{i,1}(:,2)); %find mVelocity/frame
%c and d corrospond to filling T2velocity trials
%c = find(x.velocitytrials{i,1}(:,4)== max(x.velocitytrials{i,1}(:,4)));
c = find(x.velocitytrials2{i,1}(:,2)== max(x.velocitytrials2{i,1}(:,2)));
%d = length(x.velocitytrials{i,1}(:,4));
d = length(x.velocitytrials2{i,1}(:,2));
x.T2mVeloc_pcnt(i) = c/d*100; %time to peak (%)
x.T2mVeloc_ms(i) = x.mVelocFrame(i)*sec_frame*1000; %time to peak (ms) 
x.mVeloc2end_ms(i) = x.totaltime(i) - x.T2mVeloc_ms(i); %Peak to end (ms)
x.mVeloc2end_pcnt(i) = 100 - x.T2mVeloc_pcnt(i); %Peak to end (%)


%------------Acceleration-------------------
%[x.mAccel(i), x.mAccelFrame(i)] = max(x.velocitytrials{i,1}(:,5)); %find mAccel
[x.mAccel(i), x.mAccelFrame(i)] = max(x.acceltrials{i,1}(:,2)); %find mAccel
%e and f corrospond to filling T2velocity trials
%e = find(x.velocitytrials{i,1}(:,5)== max(x.velocitytrials{i,1}(:,5)));
e = find(x.acceltrials{i,1}(:,2)== max(x.acceltrials{i,1}(:,2)));
%f = length(x.velocitytrials{i,1}(:,5));
f = length(x.acceltrials{i,1}(:,2));
x.T2mAccel_pcnt(i) = e/f*100; %time to peak (%)
x.T2mAccel_ms(i) = x.mAccelFrame(i)*sec_frame*1000; %time to peak (ms) 
x.mAccel2end_ms(i) = x.totaltime(i) - x.T2mAccel_ms(i); %peak to end (ms)
x.mAccel2end_pcnt(i) = 100 - x.T2mAccel_pcnt(i); %peak to end (%)

end
