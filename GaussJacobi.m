function ret =GaussJacobi(A,B)
   [n,m]=size(A);
   
   for i=1:n
       Diag(i)=A(i,i);
       Rest(i,:)=[A(i,1:i-1) A(i,i+1:m)];
       if abs(Diag(i))<abs(sum(Rest(i,:)))
           ret="doesnt exist!!";
       end
   end
   
   ret(1,:)=zeros(1,m);
   X=ret;
   for i=2:20
       for j=1:m
           Xrest=[X(1:j-1) X(j+1:m)];
           ret(i,j)=(B(j)-Rest(j,:)*Xrest')/Diag(j);
       end
       if abs(ret(i)-ret(i-1))<.0001
          return;
       end 
       X=ret(i,:);
   end    
end

