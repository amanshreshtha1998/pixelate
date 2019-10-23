function [ p ] = obstaclesgrid(a)
%UNTITLED2 Summary of this function goes here
%   Detailed explanation goes here
global yelrg blackrg bluerg brownrg grayrg redrg greenrg getall getallc;
obs = zeros(1,25);
k = regionprops(a,'Centroid');
[~,n] = bwlabel(a);
for i=1:n
    index = k(i).Centroid;
    if(a(int32(index(2)),int32(index(1)))==1)
    obs(gridnum(k(i)))=1;
    end
end
for i=1:25
    in= getallc(i).Centroid;
    if(a(int32(in(2)),int32(in(1)))==1)
        obs(i)=1;
    end
end

p = zeros(5);
for i=1:5
    for j=1:5
        p(j,i) = obs(5*(i-1)+j);
    end
end
end

