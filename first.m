global vid rect scra yelrg firstch blackrg bluerg brownrg grayrg redrg greenrg getall getallc  bot1rg bot2rg leaveredcones;
while(firstch==0)
a= getsnaphsot(vid);
a = imcrop(a,rect);
a = imrotate(a,90);
if(firstch==0)  
blue = findcol(a,bluerg);
[~,n]= bwlabel(blue);
bluebb = regionprops(blue);
indicator = 1;
area =0;
for i =1:n
    if(bluebb(i).Area>area)
        area = bluebb(i).Area;
        indicator = i;
    end
end
destgridno = gridnum(bluebb(indicator));
[start,~] = botpos(a);
botgridno = getgrid2(start);

k= obstaclesgrid(findcol(a,whiterg))|obstaclesgrid(findcol(a,yelrg))|obstaclesgrid(findcol(a,grayrg))|obstaclesgrid(findcol(a,brownrg))|obstaclesgrid(findcol(a,bluerg));
pj = length(leaveredcones);
for i=1:pj
    ind = gridxy(leaveredcones(i));
    k(ind(1),ind(2)) = 0; 
end
%path = dijkstra(k,botgridno,destgridno);

a= getsnaphsot(vid);
a = imcrop(a,rect);
obs = findallobs2indi(a,botgridno,destgridno);
obsno = length(obs);

while(obsno~=0)
        fillcrater(obs(1));
        a= getsnaphsot(vid);
        a = imcrop(a,rect);
        obs = findallobs2indi(a,botgridno,destgridno);
        obsno = length(obs);
end
%glow blue 2
fwrite(scra,'y');
pause(2);

a= getsnaphsot(vid);
a = imcrop(a,rect);
[start,~] = botpos(a);
botgridno = getgrid2(start);
path = dijkstra(k,botgridno,destgridno);
botpath(path,bluebb(indicator).Centroid);
%glowled
firstch=1;
end
end