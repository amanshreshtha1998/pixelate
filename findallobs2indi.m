function [ obsno ] = findallobs2indi(a,start,dest)
%UNTITLED4 Summary of this function goes here
%   Detailed explanation goes here
global yelrg firstch blackrg bluerg brownrg grayrg redrg greenrg whiterg getall getallc leaveredcones;
obsno=[];
n = length(leaveredcones);
k  = obstaclesgrid(findcol(a,yelrg))|obstaclesgrid(findcol(a,bluerg))|obstaclesgrid(findcol(a,brownrg))|obstaclesgrid(findcol(a,grayrg))|obstaclesgrid(findcol(a,redrg))|obstaclesgrid(findcol(a,whiterg))|obstaclesgrid(findcol(a,greenrg));
for i=1:n
    ind = gridxy(leaveredcones(i));
    k(ind(1),ind(2)) = 0; 
end
k
if(length(dijkstra(k,start,dest))<1000)
    obsno = [];
else 
    ar = findbluecones(a);
    if(length(ar)==1)
        obsno(1) = ar(1);
    else
        ob1 = gridxy(ar(1));
        ob2 = gridxy(ar(2));
        k(ob2(1),ob2(2))=0;
        if(length(dijkstra(k,start,dest))<1000)
            obsno(1) =  ar(2);
        else 
            k(ob2(1),ob2(2))=1;
            k(ob1(1),ob1(2))=0;
            if(length(dijkstra(k,start,dest))<1000)
                obsno(1)=ar(1);
            else
                obsno(1)=ar(1);
                obsno(2)=ar(2);
            end
        end
    end
end

end

