n = 0:199;
x = input('Please input X in terms of n: ');
plot(n,x);
hold on;
for idx = 1:200
    if idx == 1
        y(idx) = -1.5.*x(idx) + 2.*x(idx+1) - 0.5.*x(idx+2);    %subfunction at n = 0
    elseif idx >= 2 && idx <= 199
        y(idx) = 0.5.*x(idx+1) - 0.5.*x(idx-1);     %subfunction for n from 1 to 198
    elseif idx == 200    
        y(idx) = 1.5.*x(idx) - 2.*x(idx-1) + 0.5.*x(idx-2); %subfunction at n = 199
    end
end
plot(n,y), legend('X(n)','Y(n)');
