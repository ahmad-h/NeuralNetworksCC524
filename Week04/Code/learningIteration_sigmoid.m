%x = input('Input Vector: ');
%x = [ 1 0 1]
%#w = input('Weights Vector: ');
%w = [ 0.3 0.5 0.4]
%#t = input('Output Target : ');
%t  = 1

x = [ 0.5 0.2 ];
w = [0.5 0.5 ];
t = 0.7;

eta = 0.3;


y = logsig(x*w');
delta = t - y;


% the 10000 is for percision points , 
%so 0.699950 is consierdr 0.7

while round(delta * 1000000)  > 0
    

for i = 1 : size(x,2)

    %disp(sprintf('X[%f] = %f',i,x(i)));

    %disp(sprintf('Delta = %f',delta));

    w(i) = w(i) + (x(i) * eta  * (delta) * y * (1 - y) ); 
    %using the sigmoid function adds f'
    
    disp(sprintf('W[%f] = %f',i,w(i)));


end
y = logsig(x*w');
delta = t - y;
disp(sprintf('Y = %f',y));

end