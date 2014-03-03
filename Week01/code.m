% this is a comment 

% Simple arithmatic
1 + 5
2 - 9
5 * 3.14159265369
5/2
1/0 % thats infinaty :)


% Vectors and Matrices
v1 = [ 1 2 3 4 5 6 7] % row
v2 = [ 1 ;2 ; 3 ; 4 ; 5 ;6 ;7] % colomn
v1' %transpose
v2' %transpose



m1 = [1 2 3 ;4 5 6;7 8 9]
m1'


v1 = 1:5 % numbers from 1 to 5

v2 = 0:2:10 %even numbers from 0 to 10


v1 * 5 % each item in v1 is multiplied by 5



r1 = [1 : 100] % a vector of numbers from 1 to 100


r = [1:0.01:10] % a vector of numbers from 1 to 10 with step 0.01


f = [0:0.01:1];
plot(f,sin(2 * pi * f)) % plots sin wave


hold on 
plot (f,2 * sin(2 * pi * f),'r^')
plot (f,3 * sin(2 * pi * f),'b*--')
hold off

figure(2)
hold on
for i = [ 1 : 10]
    plot (f,i * sin(2 * pi * f),'b--')
end
hold off

figure(3)
hold on
for i = [ 0:0.5 : 3]
    plot (f, sin(i * pi * f),'b--')
end
hold off





