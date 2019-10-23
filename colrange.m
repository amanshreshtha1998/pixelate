function [rgb] = colrange(i)
%UNTITLED Summary of this function goes here
%   Detailed explanation goes here
var = imcrop(i);
redmax = max(max(var(:,:,1)));
redmin = min(min(var(:,:,1)));
greenmax = max(max(var(:,:,2)));
greenmin = min(min(var(:,:,2)));
bluemax = max(max(var(:,:,3)));
bluemin = min(min(var(:,:,3)));
clr_var = 5;
rgb = [redmin-clr_var, redmax+clr_var, greenmin-clr_var , greenmax+clr_var , bluemin-clr_var, bluemax+clr_var];
end

