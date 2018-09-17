function [ Grouped_stats,Cohort_control, Cohort_lesion ] = ExtractGroupMeans( x,y,z,a )
%UNTITLED2 Summary of this function goes here
%   Detailed explanation goes here

x = table2cell(x);
x= cell2mat(x); 

y= table2cell(y);
y= cell2mat(y); 

z= table2cell(z);
z= cell2mat(z);  

a= table2cell(a);
a= cell2mat(a); 

Cohort_control = vertcat(x,y);
Cohort_lesion = vertcat(z,a);

Grouped_stats = [mean(Cohort_control),std(Cohort_control);mean(Cohort_lesion),std(Cohort_lesion)];
end

