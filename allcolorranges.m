function [ output_args ] = allcolorranges( a )
%UNTITLED8 Summary of this function goes here
%   Detailed explanation goes here
yelrg = colrange(a);
imtool(findcol(a,yelrg));
blackrg = colrange(a);
imtool(findcol(a,blackrg));
bluerg = colrange(a);
imtool(findcol(a,bluerg));
brownrg = colrange(a);
imtool(findcol(a,brownrg));
grayrg = colrange(a);
imtool(findcol(a,grayrg));
redrg = colrange(a);
imtool(findcol(a,redrg));
greenrg = colrange(a);
imtool(findcol(a,greenrg));
end
