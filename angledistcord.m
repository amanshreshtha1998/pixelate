function [distance,angl] = angledistcord( dest_cord,image )
%UNTITLED5 Summary of this function goes here
%   Detailed explanation goes here
global yelrg firstch blackrg bluerg brownrg grayrg redrg greenrg getall getallc  bot1rg bot2rg leaveredcones;
[r,c,~]=size(image);
rscale=240/r;
cscale = 240/c;
%dest_cord=getallc(dest).Centroid;
[botc,botvec] = botpos(image);
angl=angle((complex(botvec(1),botvec(2)))/(complex(dest_cord(1)-botc(1),dest_cord(2)-botc(2))));
angl=(angl*180)/pi;
distance=(((dest_cord(1)-botc(1))*rscale)^2+((dest_cord(2)-botc(2))*cscale)^2)^0.5;

end

