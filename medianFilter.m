function img = medianFilter(image, og)
%UNTITLED4 Summary of this function goes here
%   Detailed explanation goes here
%Fill in the gaps By using Median Filter
b1 = size(image);
a1 = isColored(og);
for i = 2:b1(1)-2
    for j = 2:b1(2)-2
        if image(i,j)==0
       image(i,j) = median([image(i-1,j-1),image(i-1,j),image(i-1,j+1),image(i,j-1),image(i,j),image(i,j+1),image(i+1,j-1),image(i+1,j),image(i+1,j+1)]);
       if a1 == 1
       image(i,j,2) = median([image(i-1,j-1,2),image(i-1,j,2),image(i-1,j+1,2),image(i,j-1,2),image(i,j,2),image(i,j+1,2),image(i+1,j-1,2),image(i+1,j,2),image(i+1,j+1,2)]);
       image(i,j,3) = median([image(i-1,j-1,3),image(i-1,j,3),image(i-1,j+1,3),image(i,j-1,3),image(i,j,3),image(i,j+1,3),image(i+1,j-1,3),image(i+1,j,3),image(i+1,j+1,3)]);
       end
        end
    end
end
img = image;
end

