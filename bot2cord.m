function [] = bot2cord(dest)
%UNTITLED4 Summary of this function goes here
%   Detailed explanation goes here
global vid rect scra yelrg firstch blackrg bluerg brownrg grayrg redrg greenrg getall getallc  bot1rg bot2rg leaveredcones;
while(1)
    pause(2);
    a = getsnapshot(vid);
    a = imcrop(a,rect);
    a= imrotate(a,90);
    
    [botc,botvec]=botpos(a);
    [d,ang]=angledistcord(dest,a);
    if(d<10)
        break;
    else
        botmove(ang,d);
        pause(1);
    end
end

