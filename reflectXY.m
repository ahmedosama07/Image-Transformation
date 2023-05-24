function newImage = reflectXY(image)
%reflectXY Summary of this function goes here
%   Detailed explanation goes here
A = [0 1;
     1 0];
%Convert to double
a= double(image);
[outx, outy] = transform(a, A);
% Forming the transformed image
f = formImage(outx, outy, a);

% Fill the gaps
%Fill in the gaps By using Median Filter
newImage = uint8(medianFilter(f, a));
end