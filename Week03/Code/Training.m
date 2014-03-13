
clear;
P=[-0.5  -0.5  0.3   0.1;    %The training data array
   -0.5   0.5 -0.5   1.0];   % 2-dimensional data.

T=[1 1 0 0];   %The desired response (target data)


pq = minmax(P);  % This gives the ranges of x1 and x2

net = newp(pq,1);  %This creates a new perceptron object
net.iw{1,1} = [-1.0 -1.3];  %This initializes the 2 weights
net.b{1} = 1;              %This init. the bias

plotpv(P,T);   %This simply plots the training data
%plotpc(net.iw{1,1},net.b{1})
plotpc(net.iw{1,1},net.b{1});
%This plots the initial decision
%line boundary between the classes before training




net.trainParam.goal = 0.0;  %This gives the error goal
net.trainParam.epochs=50;   %This gives the max. number of iterations

[net,rec,y,e] = train(net,P,T);   %This is the adaptation done after each Epoch
%and produces the adapted net, the output y, and the error e.



net.iw{1,1}  %Those print the final values of the weights after training
net.b{1}


plotpv(P,T)
plotpc(net.iw{1,1},net.b{1})  %This plots the final decision boundary.

%This program outputs 3 figures:
% the training figure, the error versus the iterations
% the decision boundary before training, fig.1
% the decision boundary after training, fig.2


%Randomize the initial weights and bias 3 times and run the program
%each time and report the results.
