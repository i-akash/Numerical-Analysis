function ret =GuassSeidel(A,B)
  [n,m]=size(A);
  
  for i=1:n
      diag(i)=A(i,i);
      rest(i,:)=[A(i,1:i-1) A(i,i+1:m)];
      if abs(diag(i))<abs(sum(rest(i,:)))
          ret="doesnt exist";
      end    
  end
  
  ret(1,:)=zeros(1,m);
  x=ret;
  
  for i=2:20
      for j=1:m
          xrest=[x(1:j-1) x(j+1:m)];
          x(j)=(B(j)-rest(j,:)*xrest')/diag(j);
      end
      ret(i,:)=x;
      
      if abs(ret(i)-ret(i-1))<.0001
          return;
      end    
  end    
end

