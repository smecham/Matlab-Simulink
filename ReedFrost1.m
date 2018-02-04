% The Reed-Frost model
%  Note:  The plotting part of the script is commented out
%         If you would like you could uncomment to get the plots
j  = 0;
OP = zeros(20,5);
for q = .99:-0.01:.96
  for si=100:100:500
    j=j+1;
    hold off;
    c=zeros(15,1);
    s=zeros(15,1);
    c(1)= 1;
    s(1)= si;
    for i=1:15
      c(i+1) = s(i)*(1 - q^c(i));
      s(i+1) = s(i) - c(i+1);
    end
    % plot(c,':');
    % hold on;
    % plot(s,'--');
    % axis([1 16 0 si]);
    % xlabel('Time');
    % ylabel(' Cases ( ... )     Susceptibles ( ---- ) ');
    % Ti = ['q = ' num2str(q)];
    % title(Ti);
    % figure;
    [Mx I] = max(c);
    OP(j,:) = [q si s(16) Mx I];
  end
end
OP