function [botc,botvec] = botpos(a)
global yelrg firstch blackrg bluerg brownrg grayrg redrg greenrg getall getallc  bot1rg bot2rg leaveredcones;
%UNTITLED2 Summary of this function goes here
%   Detailed explanation goes here
% pause(1);
im1 = findcol(a,bot1rg);
im2 = findcol(a,bot2rg);
imshow(a);
bb1 = regionprops(im1);
bb2 = regionprops(im2);
cen1 = bb1.Centroid;
cen2 = bb2.Centroid;
botc = (cen1+cen2)/2;
botvec = (cen1-cen2);
end

