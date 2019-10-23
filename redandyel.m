function [b] = redandyel( a )
%UNTITLED7 Summary of this function goes here
%   Detailed explanation goes here
global yelrg blackrg bluerg brownrg grayrg redrg greenrg;

b = findredblocks(a);
c = findcol(a,yelrg);

csize = size(c);
c(100:csize(1),100:csize(2))=0;
b = b|c;
imtool(b);
end

