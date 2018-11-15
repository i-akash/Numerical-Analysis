function ret =Bisection(f,a,b)
%UNTITLED Summary of this function goes here
%   Detailed explanation goes here

   if f(a)==0
       ret=a+" is the root";
   elseif f(b)==0
       ret=b+" is the root";
   elseif f(a)*f(b)>0
       ret="root doesn't exits in [a,b]";
       return;
   end 
   
   
   ret(1,:)=[a b 0 0];
   for i=2:20
       x=(a+b)/2;
       x
       ret(i,:)=[a b x f(x)];
       
       if f(x)*f(a)<0
           b=x;
       elseif f(x)*f(b)<0
           a=x;
       end
       
       if abs(ret(i-1,3)-ret(i,3))<0.0001
           return;
       end    
   end    

end

