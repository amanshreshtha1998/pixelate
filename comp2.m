function [cen] = comp( a )
%UNTITLED2 Summary of this function goes here
%   Detailed explanation goes here
global yelrg blackrg bluerg brownrg grayrg redrg greenrg getall getallc;
imshow(a);
bb = regionprops(a);
area1 =0 ;
area2 =0 ;
s1 =0;
s2 =0;
fa = zeros(1,4);
pq = zeros(1,4);
cen = regionprops(a);
for i=1:2
    kb = bb(i).BoundingBox;
    kc = bb(i).Centroid;
%     kb(1)+kb(3)/2
%     kb(2)+kb(4)/2
    if(bb(i).Area>area1)
        area1 = bb(i).Area;
        s1=i;
    end
end
for i=3:4
    if(bb(i).Area>area2)
        area2 = bb(i).Area;
        s2=i;
    end
end
pq(gridnum(bb(s1))) = s2;
pq(s2)=gridnum(bb(s1));
fa(s2)=s1;
fa(s1)=s2;
cen(gridnum(bb(s1)))=bb(s2);
for i=1:2
    if(bb(i).Area<area1)
        area1 = bb(i).Area;
        s1=i;
    end
end
for i=3:4
    if(bb(i).Area<area2)
        area2 = bb(i).Area;
        s2=i;
    end
end
fa(s1)=s2;
fa(s2)=s1;
pq(gridnum(bb(s1))) = s2;
pq(s2)=gridnum(bb(s1));
gridnum(bb(s1))
cen(gridnum(bb(s1)))=bb(s2);
% for i=1:4
%     if(bb(i).Area>area1&&pq(gridnum(bb(i)))==0)
%         area1 = bb(i).Area;
%         s1=i;
%     end
% end
% for i=5:8
%     if(bb(i).Area>area2&&fa(i)==0)
%         area2 = bb(i).Area;
%         s2=i;
%     end
% end
% fa(s1)=s2;
% fa(s2)=s1;
% pq(gridnum(bb(s1))) = s2;
% pq(s2)=gridnum(bb(s1));
% cen(gridnum(bb(s1)))=bb(s2);
% for i=1:4
%     if(pq(gridnum(bb(i)))==0)
%         s1=i;
%     end
% end
% for i=5:8
%     if(fa(i)==0)
%         s2=i;
%     end
% end
% fa(s1)=s2;
% fa(s2)=s1;
% pq(gridnum(bb(s1))) = s2;
% pq(s2)=gridnum(bb(s1));
% cen(gridnum(bb(s1)))=bb(s2);

ims = extractIm(a,bb(1))|extractIm(a,bb(fa(1)));
imtool(ims),title('comp 1');
% pause(2);
ims2 = extractIm(a,bb(2))|extractIm(a,bb(fa(2)));
imtool(ims2),title('comp 2');
% % pause(2);
% ims3 = extractIm(a,bb(3))|extractIm(a,bb(fa(3)));
% imtool(ims3),title('comp 3');
% % pause(2);
% ims4 = extractIm(a,bb(4))|extractIm(a,bb(fa(4)));
% imtool(ims4),title('comp 4');
end
