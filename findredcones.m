function [redcones] = findredcones(a)
%UNTITLED2 Summary of this function goes here
%   Detailed explanation goes here
global redrg;
redcones = findcol(a,redrg)&(~findredblocks(a));



end

