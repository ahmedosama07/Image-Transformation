clc;
clear;
% close all;
tic
%% Input Image
% [file,path] = uigetfile('*.*');
% f1 = fullfile(path,file);
% if prod(double(file) == 0) && prod(double(path) == 0)
%     return
% end   
a = imread("cat.jpg");


%% Input Formating
in = input('Press 1 for Rotate and 2 for Transform : ');
if in==1
    angle = input('Enter angle in Degrees : ');
    in1 = input('Press 1 for further transform else 2 : ');
    if in1 == 1
        homo = input('3D rotation as row vector (1x3) : ');
        anglerad = pi*angle/180;
        A1 = [cos(anglerad), sin(anglerad);-sin(anglerad),cos(anglerad)];
        A = [A1,[0;0];homo];
    else
        anglerad = pi*angle/180;
        A = [cos(anglerad), sin(anglerad),0;-sin(anglerad),cos(anglerad),0;0,0,1];
    end
else 
    A = input('Enter transform Matrix : ');
end
a1 = isColored(a);
b = size(a);
%Convert to double
a= double(a);                       

%% Transform 

[outx, outy] = transform(a, A);
%% Forming the transformed image
f = formImage(outx, outy, a);

%% Fill the gaps
%Fill in the gaps By using Median Filter
f = medianFilter(f, a);


%% Display the Images
figure;
imshow(uint8(a));
title('Original Image')
figure;
imshow(uint8(f));
title('Transformed Image')

%% Save the image ?
in2 = input('Do you want to save the image ? (Press 1 for yes 2 for No) : ');
if in2 == 1
    [file,path] = uiputfile('*.*');
    f2 = fullfile(path,file);
    imwrite(uint8(f),f2);
end