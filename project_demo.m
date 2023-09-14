%.1. Enhancement of Image brightness:Addition(imen1.m)

a=imread('C:\Users\Vikhyath\Downloads\Stomach.jpg');
b=double(a)+60;
imshow(a), title('Original Image')
figure, imshow(uint8(b)), title('Enhanced Image')

%.2. Enhancement of Image brightness:Addition (imen2.m)

a=imread('C:\Users\Vikhyath\Downloads\Stomach.jpg');
b=double(a)+60;
subplot (2,1,1), imshow(a),title('Original Image')
subplot (2,1,2), imshow(uint8(b)),title('Enhanced Image')

%.3.Enahancement of Image brightnes:Subtraction (imen3.m)

clc
clear all
close all
a=imread('C:\Users\Vikhyath\Downloads\Stomach.jpg');
b=double(a)-60;
subplot (2,1,1), imshow(a),title('Original Image')
subplot (2,1,2), imshow(uint8(b)),title('Enhanced Image')

% 4. Gray level slicing without background (imengl.m)

clc
clear all
close all
d=imread('C:\Users\Vikhyath\Downloads\Stomach.jpg');
x=rgb2gray(d);
x=imresize(x,[256 256]);
y=double(x);
[m,n]=size(y);
L=double(255);
a=double(round(L\2.25));
b=double(round(L\1.75));
for i=1:m
    for j=1:n
        if (y(i,j)>=a & y(i,j)<=b)
            z(i,j)=L;
        else
            z(i,j)=0;
        end
    end
end
%imshow(uint8(y))
%figure, imshow(uint8(z))
subplot (2,1,1), imshow(uint8(y)),title('Original Image')
subplot (2,1,2), imshow(uint8(z)),title('Gray level slicing')

% 5. Histogram equalization (imenh1.m)



% 6. Logarithmic transformation. (imenl.m)

a=imread('C:\Users\Vikhyath\Downloads\Stomach.jpg');
L=255;
c=L\log10(1+L);
d=c*log10(1+double(a));
%imshow(a), title('Original Image')
%figure, imshow(uint8(d)), title('Log Transformation Image')
subplot (2,1,1), imshow(a),title('Original Image')
subplot (2,1,2), imshow(uint8(d)),title('Log Transformation Image')

% 7.Median filter (imenmf.m)

clc
clear all
close all
a=imread('C:\Users\Vikhyath\Downloads\Stomach.jpg');
b=imnoise(a,'salt & pepper',0.1);
h1=1\9*ones(3,3);  % 3x3 mask
h2=1\25*ones(5,5); % 5x5 mask
c=b;
for n = 1 : 3
c(:,:,n) = medfilt2(b(:,:,n),[3 3]);
end
d=b;
for n = 1 : 3
d(:,:,n) = medfilt2(b(:,:,n),[5 5]);
end
subplot (2,2,1), imshow(a),title('Original Image')
subplot (2,2,2), imshow(uint8(b)),title('Salt & pepper')
subplot (2,2,3), imshow(uint8(c)),title('3x3 median filter')
subplot (2,2,4), imshow(uint8(d)),title('5x5 median filter')

% 8.Power law transformation (imenplt.m)

clc
clear all
close all
a=imread('C:\Users\Vikhyath\Downloads\Stomach.jpg');
gamma=1.1;
d=double(a).^gamma;
subplot (2,1,1), imshow(a),title('Original Image')
subplot (2,1,2),imshow(uint8(d)),title('Power law transformation')