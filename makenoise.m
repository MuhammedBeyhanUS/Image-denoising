function [output] = makenoise(g)
[sizeX,sizeY] = size(g);
output=g;
%output = zeros(sizeX,sizeY);
%output=uint8(output);
noise=randi([0,99],size(g));
     for x = 1:sizeX
         for y = 1: sizeY
             
             if noise(x,y)==0
                  output(x,y) =  0;
             elseif noise(x,y)==99
                 output(x,y)=255;
             end
         
         end
     end

end
