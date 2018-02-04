% The Reed-Frost model
j  = 0;
si = 117;
Fit = zeros(100,2);
for q = .97:-0.001:.96
    j=j+1;
    c=zeros(15,1);
    s=zeros(15,1);
    c(1)= 1;
    s(1)= si;
    for i=1:15
      c(i+1) = s(i)*(1 - q^c(i));
      s(i+1) = s(i) - c(i+1);
    end
    chiC = sum( ( aycock(:,2) - c(1:6) ) .* ( aycock(:,2) - c(1:6) ) ./ c(1:6) );
    chiS = sum( ( aycock(:,3) - s(1:6) ) .* ( aycock(:,3) - s(1:6) ) ./ s(1:6) );
    chiT = chiC + chiS;
    Fit(j,:) = [q chiT];
 end
 Fit(1:j,:)
 plot(aycock(:,1)+1,aycock(:,2),'*');
 hold on;
 plot(c);
 hold off;