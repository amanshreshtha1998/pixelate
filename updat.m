function [ parent,dist] = updat( grid,u,v,parent,sptSet,dist )
%UNTITLED6 Summary of this function goes here
%   Detailed explanation goes here
r2=mod(v-1,5)+1;
c2=ceil(v/5);
if grid(r2,c2)~= 1
    if sptSet(v)==0 && dist(u)~=1000 && dist(u)+1<dist(v)
        parent(v)=u;
        dist(v)=dist(u)+1;
    end
end
end

