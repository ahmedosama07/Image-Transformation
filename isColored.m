function a = isColored(image)
%UNTITLED3 Summary of this function goes here
%   Detailed explanation goes here
a=0;
% Is it color or grayscale
b = size(image);
if size(b,2)==3
    a = 1;
end
end

