function [] = botpath(path,dest_cord)
%UNTITLED2 Summary of this function goes here
%   Detailed explanation goes here
global vid scra yelrg firstch blackrg bluerg brownrg grayrg redrg greenrg getall getallc  bot1rg bot2rg leaveredcones;
n=length(path);

for i=2:n-1
bot2cord(getallc(path(i)).Centroid);
pause(1);
end
bot2dest(dest_cord);
pause(1);
end

