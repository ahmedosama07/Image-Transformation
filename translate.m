function newImage = translate(image, ax, ay)
%UNTITLED3 Summary of this function goes here
%   Detailed explanation goes here
A = [1 0 ax;
     0 1 ay;
     0 0 1];
%Convert to double
a= double(image);
[outx, outy] = transform(a, A);
% Forming the transformed image
f = formImage(outx, outy, a);

%Fill the gaps
%Fill in the gaps By using Median Filter
newImage = int8(medianFilter(f, a));
end