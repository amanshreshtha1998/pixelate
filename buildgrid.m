global yelrg blackrg bluerg brownrg grayrg redrg greenrg getall getallc;
z = im2bw(a(:,:,1));
z(:,:)=1;
arenasize = size(z);
for i = 1:4
    z(int32(arenasize(1)/5)*i,:)=0;
    z(:,int32(arenasize(2)/5)*i)=0;
end
imtool(z);
getall = regionprops(z);
getallc = regionprops(z,'Centroid');