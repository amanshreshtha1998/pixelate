a = getsnapshot(vid);
a = imcrop(a,rect);
a = imrotate(a,90);
global obsd;
yelp = comp(findcol(a,yelrg));
redp = comp(redandyel(a));
k= obstaclesgrid(findcol(a,redrg))|obstaclesgrid(findcol(a,yelrg));
for i=1:2
a = getsnapshot(vid);
a = imcrop(a,rect);
a = imrotate(a,90);
k= obstaclesgrid(findcol(a,redrg))|obstaclesgrid(findcol(a,yelrg));
n = length(obsd);
for p =1:n
    ind = gridxy(obsd(p));
    k(ind(1),ind(2))=1;
end
[botc,~] = botpos(a);

path = dijkstra(k,gridnum2(botc),gridnum(redp(i)));   
botpath(path,redp(i).Centroid);
pause(2);
fwrite(scra,'g');
a = getsnapshot(vid);
a = imcrop(a,rect);
a = imrotate(a,90);
n = length(obsd);
for p =1:n
    ind = gridxy(obsd(p));
    k(ind(1),ind(2))=1;
end
k= obstaclesgrid(findcol(a,redrg))|obstaclesgrid(findcol(a,yelrg));
[botc,~] = botpos(a);
path = dijkstra(k,gridnum2(botc),gridnum(yelp(i)));    
botpath(path,yelp(i).Centroid);
pause(2);
fwrite(scra,'u');
botback;
obsd(length(obsd)+1)=gridnum(yelp(i));
pause(1);
end