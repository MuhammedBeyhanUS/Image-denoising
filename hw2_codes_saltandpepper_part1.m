i=imread('img.jpg');
%imshow(i);
g=rgb2gray(i);
%imshow(g);
gsp=makenoise(g);
%imshow(gsp);
[x,y]=size(gsp);
agsp=zeros(x,y);
agsp = im2double(agsp);
n=100;
gsp= cell(n,1);
for i=1:n
    gsp{i}=makenoise(g);
    gsp{i} = im2double(gsp{i});
    %figure;
    %imshow(gsp{i});
    for j=1:x
        for k=1:y
            agsp(j,k)=agsp(j,k)+gsp{i}(j,k)/n;
        end
    end
end
figure;
imshow(agsp);