figure;

% Read the image
face = rgb2gray(imread("C:\Users\Student\Downloads\SampleImages\SampleImages\Face.jpg"));

% Create the filter
filter1 = fspecial('average', 3);
filter2 = fspecial('average', 5);
filter3 = fspecial('average', 10);
filter4 = fspecial('average', 20);

% Apply the filter
face1 = imfilter(face,filter1);
face2 = imfilter(face,filter2);
face3 = imfilter(face,filter3);
face4 = imfilter(face,filter4);

% Display the image
images = [face, face1, face2, face3, face4];
imshow(images)




% Read the image
test = imread("C:\Users\Student\Downloads\SampleImages\SampleImages\Test.tif");

% Apply the filter
test1 = medfilt2(test,[3,3], "zeros");
test2 = medfilt2(test,[5,5], "zeros");
test3 = medfilt2(test,[10,10], "zeros");

% Display the image
images = [test, test1, test2, test3];
imshow(images)



% Read the image
lincoln = rgb2gray(imread("C:\Users\Student\Downloads\SampleImages\SampleImages\LincolnSP.jpg"));

% create an empty image with the same size as image
lincolnSize = im2double(lincoln);
lincolnxy = zeros(size(lincolnSize)); 

xfilter = [-1 0 1;
           -2 0 2;
           -1 0 1]

yfilter = xfilter'

lincolnx = imfilter(lincoln,xfilter);
lincolny = imfilter(lincoln,yfilter);

lincolnxy = lincolnx + lincolny;

% Display the image

sobel = fspecial("sobel");
lincolnSobel = imfilter(lincoln,sobel);

images = [lincoln, lincolnx, lincolny, lincolnxy, lincolnSobel];
imshow(images)







% for i=2:size(size,1)-1
%     for j=2:size(size,2)-1
% 
%     end
% end




