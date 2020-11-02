function [output] = denoise(g)
[sizeX,sizeY] = size(g);
maskm=sizeX-1;
maskn=sizeY-1;
output=g;
     for x = 2:maskm
         for y = 2: maskn
             if g(x,y)==0 || g(x,y)==255
                 flag=0;
                 sum=0;
                 for j=maskm-1:maskm+1
                     for k=maskn-1:maskn+1
                         if g(j,k)~= 0 && g(j,k)~=255
                         flag = flag+1;
                         sum = sum + g(j,k);
                         end
                     end
                 end
            
                 output(x,y) =  sum/flag;
             end
         
         end
     end

end