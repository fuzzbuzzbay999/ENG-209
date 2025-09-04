% Juliano_Declan_ENG209_HW2.m

%************************************************question 1************************************************
vector1 = [2 6 10 14 18 22 26 30 34];
        %i
Q1i= sum(vector1)
        %ii
Q1ii = size(vector1)
        %iii
vector2 = [vector1(1:2:end)]

%************************************************question 2************************************************
        
        %amount each value will change accross the rows
dif = 3;
        %i
        %create the matrix row by row with the pattern
Q2i = [4:dif:16;19:dif:31;34:dif:46;49:dif:61]
        %ii
        %create the matrix column by columnn with the pattern set by dif
dif = 15;
Q2ii = [4:dif:49;7:dif:52;10:dif:55;13:dif:58;16:dif:61]'
        %iii
        %make the first array with a 1d vector using the reshape
Q2111 = reshape(4:3:61,5,4)'
        %
%************************************************question 3************************************************


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
%finish this

%************************************************question 4************************************************
        %make the random matrix
Mrand = randi([12,25],6,5)
        %i
        %make a matrix with the first third and fifth columns
Q4i = Mrand(:,[1,3,5]);
        %ii
        %make a matrix with the first second and fourth rows
Q4ii = Mrand([1,2,4,],:);
        %iii
        
Q4iii = Mrand([2,4,6],[1,2,end]);
        %iv
        %transpose the original matrix
Q4iv = Mrand(:)'

%************************************************question 5************************************************
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


%************************************************question 6************************************************

s2='Hello World!'
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
        
%************************************************question 7************************************************
        %create the struct
student = struct('College_name',{''},'semester',{''},'enrolment',{});
%values to populate it with
College_names={'pima','UofA','ASU'};
semesters={'Fall','Spring','Summer'};
enrolments={221201,2022,2023};
        %populate the 3 sruct items
        for i=1:length(College_names)
        student(i).College_name=College_names{i};
        student(i).semester=semesters{i};
        student(i).enrolment=enrolments{i};
        end
        % disp the struct info at the element
line_item = sprintf('%s; %s; %d',student(1).College_name,student(1).semester,student(1).enrolment);
disp(line_item)

%************************************************question 8************************************************
        %cell array
line_item = [student(2).College_name,student(2).semester,num2cell([student(2).enrolment])]
        %cell to char
%line_item = sprintf('%s; %s; %d', line_item{1,1},line_item{1,2},line_item{1,3})
disp(line_item)
