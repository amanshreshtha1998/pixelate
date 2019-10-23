function [] = fillcrater(obs)
%UNTITLED5 Summary of this function goes here
%   Detailed explanation goes here
global vid rect scra yelrg firstch blackrg bluerg whiterg brownrg grayrg redrg greenrg getall getallc  bot1rg bot2rg leaveredcones;
a = getsnapshot(vid);
a = imcrop(a,rect);

redcone = findredcones(a);
[~,redconeno] = bwlabel(redcone);
redbb = regionprops(redcone,'Centroid');
redgrid = zeros(redconeno,1);
for i=1:redconeno
    redgrid(i) = gridnum(redbb(i));
end
finrbb=[];

for i = 1:length(leaveredcones)
    for j =1:redconeno
        if(redgrid(j)~=leaveredcones(i))
            finrbb(length(finrbb)+1)=redbb(j);
        end
    end
end

redgrid = [];
redconeno = length(finrbb);
for i=1:redconeno
    redgrid(i) = gridnum(finrbb(i));
end

n = length(leaveredcones);
k  = obstaclesgrid(findcol(a,yelrg))|obstaclesgrid(findcol(a,bluerg))|obstaclesgrid(findcol(a,brownrg))|obstaclesgrid(findcol(a,grayrg))|obstaclesgrid(findcol(a,redrg))|obstaclesgrid(findcol(a,whiterg))|obstaclesgrid(findcol(a,greenrg));
for i=1:n
    ind = gridxy(leaveredcones(i));
    k(ind(1),ind(2)) = 0; 
end
[botc,~]=botpos(a);
start = getgrid2(botc);
path  = dijkstra(k,start,redgrid);
dest_cord;
for i =1:redconeno
    if(path(length(path))==redgrid(i))
        dest_cord = finrbb(i).Centroid;
        break;
    end
end

botpath(path,dest_cord);

%grab
fwrite(scra,'g')
pause(3);

a = getsnapshot(vid);
a = imcrop(a,rect);

k  = obstaclesgrid(findcol(a,yelrg))|obstaclesgrid(findcol(a,bluerg))|obstaclesgrid(findcol(a,brownrg))|obstaclesgrid(findcol(a,grayrg))|obstaclesgrid(findcol(a,redrg))|obstaclesgrid(findcol(a,whiterg))|obstaclesgrid(findcol(a,greenrg));
for i=1:n
    ind = gridxy(leaveredcones(i));
    k(ind(1),ind(2)) = 0; 
end

[botc,~]=botpos(a);
start = getgrid2(botc);
path  = dijkstra(k,start,obs);
blueim = findbluecones(a);
bluebb = regionprops(blueim);
bn = length(bluebb);
dest_cord=0;
mindis=1000;
obsc= getallc(obs).Centroid;
for i=1:bn
    index = bluebb(i).Centroid;
    if((index(1)-obsc(1))^2+(index(2)-obsc(2))^2<mindis)
        mindis = (index(1)-obsc(1))^2+(index(2)-obsc(2))^2;
        dest_cord = index;
    end
end

botpath(path,dest_cord );
%ungrab;
fwrite(scra,'u');
pause(3);

leaveredcones(length(leaveredcones)+1)=obs;
end

