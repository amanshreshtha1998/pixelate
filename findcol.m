function [y] = findcol(a,b)
global yelrg blackrg bluerg brownrg grayrg redrg greenrg getall getallc;
%UNTITLED4 Summary of this function goes here
%   Detailed explanation goes here
dif = 35;
 y = a(:,:,1)>=min(b(1),abs(b(1)-dif)) & a(:,:,1)<=max(b(2),abs(b(2)+dif)) &a(:,:,2)>=min(b(3),abs(b(3)-dif)) & a(:,:,2)<=max(b(4),abs(b(4)+dif)) &a(:,:,3)>=min(abs(b(5)-dif),b(5)) & a(:,:,3)<=max(b(6),abs(b(6)+dif)) ;
 
  
  y = imdilate(y,strel('square',3));
 y = imerode(y,strel('square',3));
%   imtool(y);

  y = imdilate(y,strel('square',3));
imshow(y);
  y = bwareaopen(y,100);
%  imtool(y);
%   imtool(y);
% y = imdilate(y,strel('square',6));
 %y = imerode(y,strel('line',3));
  %imtool(y);
% y = imdilate(y,strel('line',2,2));
%  imtool(y);
 %y = imdilate(y,strel('square',4));
 %y = imdilate(y,strel('line',3,10));
end

