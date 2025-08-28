%homework 
%Juliano Declan
%ENG209
%HW2
%8/29/2025
        %question 1
vector1 = [2 6 10 14 18 22 26 30 34];
        %i
Q1i= sum(vector1)
        %ii
Q1ii = size(vector1)
        %iii
vector2 = [vector1(1:2:end)]

        %question 2
        %i
dif = 3;
Q2i = [4:dif:16;19:dif:31;34:dif:46;49:dif:61]
        %ii
dif = 15;
Q2ii = [4:dif:49;7:dif:52;10:dif:55;13:dif:58;16:dif:61]'
        %iii
Q2111 = reshape(4:3:61,5,4)'
        %
        %question 3\


p1=zeros(2,3)
p2=[1:3]
p3=3* ones(2,3)
p4 = eye(3,3)
p5=ones(1,3)
p6=5*ones(1,3)

p1=[p1;p2;p3]
p4=[p4;p5;p6]

pFinal=[p1,p4]

pFinal=zeros(5,6)

        %question 4
Mrand = randi([12,25],6,5)
        %i
Q4i = Mrand(:,[1,3,5]);
        %ii
Q4ii = Mrand([1,2,4,],:);
        %iii
Q4iii = Mrand([2,4,6],[1,2,end]);
        %iv
Q4iv = Mrand(:)'

        %question 5
A=randi([-2,7],5,5)
B=randi([-2,7],5,5)
C=rand(5,1)

        %i
Q5i = 9*C
        %ii
Q5ii = (A+B)*C
        %iii
Q5iii = A*C+B*C
        %iv
%the two are the same because of the distributive property
        %v
Q5v = A*B
        %vi
Q5vi = B*A
        %vii
disp('the two are not the same because matrix multiplication is not commutative')

        %viii
Q5viii = A.*B
        %ix
Q5ix = B.*A
        %x
Q5x = C'*A
        %xi
Q5xi = A'*B
        %xii
Q5xii = B'*A
        %xiii
Q5xiii=Q5xii'
        %xiv
disp('the two are the same because the transpose of a transpose is the original matrix')
Q5xiv = A^3
        %xv
Q5xv = A.^3
        %xvi


        %question 6

s2='Hello World'
        %i
Q6i = length(s2)
        %ii
Q6ii = size(s2)
        %iii
Q6iii = class(s2)
        %iv
Q6iv = length(class(s2))
        %v
Q6v = size(class(s2))
        
        %question 7
student = struct('name','','age','','enrolment',0.00)
        for i=1:3
            disp(['Enter details for student ', num2str(i), ':'])
            disp('name')
            student(i).name = input('','s');
            disp('age')
            student(i).age = input('age','s');
            disp('enrolment number')
            student(i).enrolment = input('enrolment number','s');
        end