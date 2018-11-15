function [X,Y] =RungaKutta(f,xrang,y0,h)

x=xrang(1):h:xrang(2);
y(1)=y0;

   for i=2:length(x)
      k1=h*f(x(i-1),y(i-1));
      k2=h*f(x(i-1)+h/2,y(i-1)+k1/2);
      k3=h*f(x(i-1)+h/2,y(i-1)+k2/2);
      k4=h*f(x(i-1)+h,y(i-1)+k3);
    
      y(i)=y(i-1)+(k1+2*k2+2*k3+k4)/6;
   end
   X=x;
   Y=y;
end

