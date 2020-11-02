i=imread('img.jpg');
g=rgb2gray(i);
gsp=makenoise(g);
figure,imshow(gsp);
title('Noisy Image(Salt & Pepper Noise)');
w=(1/16)*[1 2 1;2 4 2;1 2 1];    
    [ma, na] = size(gsp);
    [mb, nb] = size(w);
    c = zeros( ma+mb-1, na+nb-1 );
    for i = 1:mb
        for j = 1:nb
            r1 = i;
            r2 = r1 + ma - 1;
            c1 = j;
            c2 = c1 + na - 1;
            c(r1:r2,c1:c2) = c(r1:r2,c1:c2) + w(i,j) * double(gsp);
        end
    end
        r1 = floor(mb/2) + 1;
        r2 = r1 + ma - 1;
        c1 = floor(nb/2) + 1;
        c2 = c1 + na - 1;
        c = c(r1:r2, c1:c2);
    
figure,imshow(uint8(c))
title('Denoised Image using Weighted Average Operation')