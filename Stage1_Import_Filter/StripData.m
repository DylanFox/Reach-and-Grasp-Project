function [x] = StripData(x)
%STRIP VELOCITY, X/Y POSN and ACCEL data
for i = 1:height(x) 
x.velocitytrials2{i,1} = x.velocitytrials{i,1}(:,[1,4]);%Velocity
x.acceltrials{i,1} = x.velocitytrials{i,1}(:,[1,5]); %Accel
x.XYposn{i,1} = x.velocitytrials{i,1}(:,[2,3]); %X/Y Posn
end

x.velocitytrials = [];

