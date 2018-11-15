function ret = NewtonRapson(f,f1,a,b)
    
   if f(a)==0
       ret=a+" is the root";
   elseif f(b)==0
       ret=b+" is the root";
   elseif f(a)*f(b)>0
       ret="root doesn't exits in [a,b]";
       return;
   end 
   
   ret(1,:)=[a b 0 0];
   x=(a+b)/2;
   
   for i=2:20
      x=x-f(x)/f1(x);
      
      ret(i,:)=[a b x f(x)];
      if f(a)*f(x)<0
          b=x;
      elseif f(x)*f(b)<0
          a=x;
      end
      
      if abs(ret(i,4)-ret(i-1,4))<0.0001
          return;
      end    
   end    
end

