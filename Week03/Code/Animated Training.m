clear;
clc;
P=[-0.5  -1.5   0.8   0.3;    %The training data array
   -0.5  -1.5  0.8   3.0;
   -0.5 -1.5 0.8 1];   % 2-dimensional data.

T=[1 1 0 0];   %The desired response (target data)


plotpv(P,T);   %This simply plots the training data



q = minmax(P);  % This gives the ranges of x1 and x2

net = newp(q,1);  %This creates a new perceptron object
net.iw{1,1} = [0.6 -2 -2];  %This initializes the 2 weights
net.b{1} = 100;              %This init. the bias

linehandle=plotpc(net.iw{1,1},net.b{1});

e=1;  %assuming 100% error


while (sse(e))   %This continues until e=0, where e is the error
[net,y,e] = adapt(net,P,T);   %This is the adaptation done on whole epoch
% basis, and produces the adapted net, the output y, and the error e.

%net.iw{1,1}    %those print the values of the weights while updating :)
%net.b{1}

linehandle=plotpc(net.iw{1,1},net.b{1},linehandle);
drawnow;  %This plots the
%decision boundary at each iteration.
end

save('trained_network','net')

sim(net,[-1;-1;-1])

