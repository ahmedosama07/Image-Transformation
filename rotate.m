function newImage = rotate(image, angle)
%rotate Summary of this function goes here
%   Detailed explanation goes here
anglerad = pi*angle/180;
A = [cos(anglerad), sin(anglerad),0;-sin(anglerad),cos(anglerad),0;0,0,1];

%Convert to double
a= double(image); 
[outx, outy] = transform(a, A);
%% Forming the transformed image
f = formImage(outx, outy, a);

%% Fill the gaps
%Fill in the gaps By using Median Filter
newImage = uint8(medianFilter(f, a));

end

