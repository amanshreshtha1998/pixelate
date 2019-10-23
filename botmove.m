function [] = botmove(a,d)
%UNTITLED7 Summary of this function goes here
%   Detailed explanation goes here
global vid scra yelrg firstch blackrg bluerg brownrg grayrg redrg greenrg getall getallc  bot1rg bot2rg leaveredcones;

g = [0,.09,.135,.170,.210,.256,.380,.805];
ang = [8,20,30,40,50,60,90,180];
k=0 ;%left or right
time=0;
if a>=-8 && a<=8
    time =0;
    gd = [0,20,30];
    td= [0,.255,.455];
    timed =0;
    for i=1:2
        if d>gd(i) && d<=gd(i+1)
            timed = (d/gd(i+1))*td(i+1);
            break;
        end
    end
    if(d>30)
        timed = .455
    end
    timed
    if timed>0
        fwrite(scra,'f');
        disp('f');
        pause(timed);
        fwrite(scra,'s');
        %elseif timed>0
        %fwrite(scra, 'b');
        %disp('b')
        %pause(timed);
        %fwrite(scra,'s');
    end
else
    if a < -8
        a=-a;
        k=1;
    end
    for i=1:7
        if ang(i) < a && a<=ang(i+1)
            time = (a/ang(i+1))*g(i+1);
        end
    end
    if a>0 && time >0 && k==0
        fwrite(scra, 'l');
        disp('l');
        pause(time);
        fwrite(scra,'s');
    elseif a>0 && time>0 && k==1
        fwrite(scra, 'r');
        disp('r');
        pause(time);
        fwrite(scra,'s');
    end
end
time

end

