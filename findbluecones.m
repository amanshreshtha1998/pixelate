function [ar ] = findbluecones(a)
%UNTITLED6 Summary of this function goes here
%   Detailed explanation goes here
global yelrg blackrg bluerg brownrg grayrg redrg whiterg greenrg getall getallc;
ar=[];
b = findcol(a,bluerg);
bb = regionprops(b);
[~,n]=bwlabel(b);
area =0;
ind=0;
for i=1:n
    if(bb(i).Area>area)
        area = bb(i).Area;
        ind = i;
    end
end
j =1;
for i = 1:n
    if(i~=ind)
        ar(j)=gridnum(bb(i));
        j = j+1;
    end
end


end

