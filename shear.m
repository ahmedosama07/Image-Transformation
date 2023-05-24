function newImage = shear(image, a)
%UNTITLED3 Summary of this function goes here
%   Detailed explanation goes here
T = maketform('affine', [1 0 0; a 1 0; 0 0 1] );
R = makeresampler({'cubic','nearest'},'fill');
newImage = imtransform(image,T,R,'FillValues', [0 0 0]); 
end

