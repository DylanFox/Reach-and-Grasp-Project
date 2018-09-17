function y = dataimport(~)
%Import all velocity data from f1718 when she used her left arm
x = dir('GOPR*_*.txt'); %filters directory to show only files of interest
nfiles = length(x);

%not sure how to preallocate this block
data = []

for i = 1:nfiles
   data = [data; importdata(x(i).name)];       
end
t = struct2table(data);

%Separate the fields to the one we want (which is the data)
datatable = t.data;

%Separate MGA, Velocity and foodwidth into separate categories
%Sort folder according to type to have all .txt
%files in the same line
Mgatrials = datatable(2:3:end);
velocitytrials = datatable(3:3:end);
foodwidthtrials = datatable(1:3:end);
y = table(Mgatrials,velocitytrials,foodwidthtrials);
end 






