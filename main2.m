global obsd vid rect scra yelrg firstch secondch blackrg bluerg brownrg grayrg redrg greenrg getall getallc  bot1rg bot2rg leaveredcones;
leaveredcones =[];
obsd = [];
firstch = 0;
secondch = 0;
scra = serial('COM6','BaudRate',9600);
fopen(scra);
vid = videoinput('winvideo', 1, 'I420_1024x576');
vid.ReturnedColorspace = 'rgb';
src = getselectedsource(vid);
fwrite(scra,'u');
vid.FramesPerTrigger = 1;
setsrc;
preview(vid);
a = getsnapshot(vid);
[a,rect] = imcrop(a);
a= imrotate(a,90);
allrange;
buildgrid;
moveon;
