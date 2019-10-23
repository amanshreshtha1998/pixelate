global vid rect scra yelrg firstch secondch blackrg bluerg brownrg grayrg redrg greenrg getall getallc  bot1rg bot2rg leaveredcones;
tricen =0;
while(secondch==0)
    a = getsnapshot(vid);
    a = imcrop(a,rect);
    
    image = findcol(a,blackrg);
    [~,n] = bwlabel(image);
    if(n==2)
        pause(2);
    else if(n>=3)
            secondch=1;
            bb = regionprops(image);
            areamin = bb(1).Area;
            tricen = bb(1).Centroid;
            for i = 2:3
                if(bb(i).Area<areamin)
                    areamin = bb(i).Area;
                    tricen = bb(i).Centroid;
                end
            end
        end
    end
end
moveon;

