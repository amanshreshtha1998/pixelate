function [ y ] = extractIm(a,b)
global yelrg blackrg bluerg brownrg grayrg redrg greenrg getall getallc;
%UNTITLED Summary of this function goes here
%   Detailed explanation goes here
r = b.BoundingBox;
y = a;
% l = int32(r(1))
% t = int32(r(2))
% w = int32(r(3))
% h = int32(r(4))
y(:,:)=0;
y(int32(r(2))-1:(int32(r(2))+1+r(4)),int32(r(1))-1:(int32(r(1))+1+r(3)))=1;
y = y&a;
%imtool(y);

end

