function [ b ] = findredblocks( a )
global yelrg blackrg bluerg brownrg grayrg redrg greenrg getall getallc;
%UNTITLED6 Summary of this function goes here
%   Detailed explanation goes here
b = findcol(a, redrg);
imshow(b);
%b = imdilate(b,strel('square',3));
k = regionprops(b);
b1 = k(1).BoundingBox;
b2 = k(2).BoundingBox;
% b(int32(b1(2)):int32(b1(2))+b1(4),int32(b1(1)):int32(b1(1))+b1(3))=0;
% b(int32(b2(2)):int32(b2(2))+b2(4),int32(b2(1)):int32(b2(1))+b2(3))=0;
imtool(b);
b = b&(~im2bw(a));
end