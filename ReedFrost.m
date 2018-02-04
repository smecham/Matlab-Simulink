% The Reed-Frost model 
% Need to set initialize q in the workspace prior to
%   running this script
c=zeros(15,1); 
s=zeros(15,1); 
c(1)= 1; 
s(1)= 100; 
for i=1:15   
   c(i+1) = s(i)*(1 - q^c(i));   
   s(i+1) = s(i) - c(i+1); 
end
plot(c,':');
hold on;
plot(s,'--');
axis([1 16 0 s(1)]);
xlabel('Time');
ylabel(' Cases ( ... )     Susceptibles ( ---- ) ');
Ti = ['q = ' num2str(q)];
title(Ti);   