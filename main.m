%a = imread('pixelate.JPG');
global vid rect scra yelrg firstch secondch blackrg bluerg brownrg grayrg redrg greenrg getall getallc  bot1rg bot2rg leaveredcones;
leaveredcones =[];
firstch = 0;
secondch = 0;
scra = serial('COM6','BaudRate',9600);
fopen(scra);
vid = videoinput('winvideo', 2, 'MJPG_1024x576');
src = getselectedsource(vid);

vid.FramesPerTrigger = 1;


src.Brightness = 103;

src.Brightness = 78;

src.Brightness = 53;

src.Brightness = 42;


src.Contrast = 57;

src.Contrast = 32;

src.Brightness = 67;

src.Brightness = 42;

src.Brightness = 47;

src.Exposure = -7;

src.Exposure = -6;

src.Exposure = -5;

src.Exposure = -6;

src.Brightness = 40;

src.Gain = 44;

src.Gain = 36;

src.Gain = 24;

src.Gain = 10;

src.Gain = 30;

src.Gain = 55;

src.Gain = 80;

src.Gain = 55;

src.Gain = 30;

src.Gain = 55;

src.Gain = 80;

src.Brightness = 128;

src.Gain = 64;

src.Brightness = 103;

src.Brightness = 78;

src.Brightness = 53;

src.Brightness = 78;

src.Brightness = 53;

src.Brightness = 28;

src.Brightness = 53;

src.Brightness = 47;

src.Sharpness = 9;

src.Sharpness = 16;



preview(vid);
a = getsnapshot(vid);
[a,rect] = imcrop(a);
a= imrotate(a,90);
allrange;
buildgrid;
yelp = comp(findcol(a,yelrg));
redp = comp(redandyel(a));



if(firstch==0)
    first;
else
    second;
end
