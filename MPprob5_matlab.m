n = 0:199;
x = input('Please input X in terms of n: ');
plot(n,x);
hold on;
y(1) = -1.5.*x(1) + 2.*x(2) - 0.5.*x(3);    %Subfunction at n=0
for idx = 1:200
    if idx == 1
        y(idx) = -1.5.*x(idx) + 2.*x(idx+1) - 0.5.*x(idx+2);
    elseif idx >= 2 && idx <= 199
        y(idx) = 0.5.*x(idx+1) - 0.5.*x(idx-1);     %subfunction for n from 2 to 198
    elseif idx == 200    
        y(idx) = 1.5.*x(idx) - 2.*x(idx-1) + 0.5.*x(idx-2); %subfunction at n = 199
    end
end
plot(n,y), legend('X(n)','Y(n)');