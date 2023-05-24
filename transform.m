function [outx, outy] = transform(image, A)
%UNTITLED2 Summary of this function goes here
%   Detailed explanation goes here
% Bring the origin to the center by this Matrix
b = size(image);
trans = [1,0,-b(2)/2;0,1,-b(1)/2;0,0,1];

%Transform Happens Here

outx = zeros(b(1),b(2));
outy = zeros(b(1),b(2));

for i = 1:b(1)
    for j = 1:b(2)
        new  = A*trans*[j;i;1];
        outx(i,j) = round(new(1)/new(3));
        outy(i,j) = round(new(2)/new(3));
    end
end
end

