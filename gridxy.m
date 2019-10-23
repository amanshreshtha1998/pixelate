function [ q ] = gridxy( p )
%UNTITLED8 Summary of this function goes here
%   Detailed explanation goes here
q=[];
i = mod(p,5);
if(i==0)
    i=8;
end
j = ceil(p/5);
q=[i ,j];
end

