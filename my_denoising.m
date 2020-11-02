i=imread('img.jpg');
g=rgb2gray(i);
gsp=makenoise(g);
figure, imtool(gsp);
dgsp=denoise(gsp);
figure, imtool(dgsp);