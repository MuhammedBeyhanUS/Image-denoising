i=imread('img.jpg');
%imshow(i);
g=rgb2gray(i);
imshow(g);
%gg=imnoise(g,'gaussian');
%imshow(gg);
[x,y]=size(g);
agg =zeros(x,y);
agg = im2double(agg);
n=10;
gg= cell(n,1);
for i=1:n
    gg{i}=imnoise(g,'gaussian');
    gg{i} = im2double(gg{i});
    %figure;
    %imshow(gg{i});
    for j=1:x
        for k=1:y
            agg(j,k)=agg(j,k)+gg{i}(j,k)/n;
        end
    end
    
end
figure;
imshow(agg);
