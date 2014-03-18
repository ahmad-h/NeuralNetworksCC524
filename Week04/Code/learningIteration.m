x = input('Input Vector: ');
%x = [ 1 0 1]
w = input('Weights Vector: ');
%w = [ 0.3 0.5 0.4]
t = input('Output Target : ');
%t  = 1

eta = 0.3;


y = x*w' >= 1; % 1 if greater than one , 0 if less than one
%hard limit function

disp(sprintf('Y = %f',y));
while (y < t)
for i = 1 : size(x,2)

    %disp(sprintf('X[%f] = %f',i,x(i)));

    delta = t - y;
    disp(sprintf('Delta = %f',delta));


    w(i) = w(i) + ( delta * x(i) * eta );
    disp(sprintf('W[%f] = %f',i,w(i)));


end

y = x*w' >= 1;
disp(sprintf('Y = %f',y));

end