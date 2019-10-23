function [pos] = gridnum( b )
%UNTITLED4 Summary of this function goes here
%   Detailed explanation goes here
global yelrg blackrg bluerg brownrg grayrg redrg greenrg getall getallc bot1rg bot2rg;
b = b.Centroid;
mindis = 1000000;
pos = -1;
for i=1:25
    blockc = getallc(i).Centroid;
    if((b(1)-blockc(1))*(b(1)-blockc(1))+(b(2)-blockc(2))*(b(2)-blockc(2))<mindis)
        mindis = (b(1)-blockc(1))*(b(1)-blockc(1))+(b(2)-blockc(2))*(b(2)-blockc(2));
        pos = i;
    end
end

end

