% Juliano_Declan_ENG209_HW2.m
% ENG 209, HW 2, exercises:

%************************************************question 1************************************************
vector1 = [2 6 10 14 18 22 26 30 34];
        %i
Q1i= sum(vector1)
        %ii
Q1ii = size(vector1)
        %iii
vector2 = [vector1(1:2:end)]

%************************************************question 2************************************************
        % The goal is to create the following matrix in 3 different methods without explicity using the indices of numbers
        %{
        4 7 10 13 16
        19 22 25 28 31
        34 37 40 43 46
        49 52 55 58 61
        %}

        
        %amount each value changes accross the rows
dif = 3;
        %i
        %create the matrix row by row with the same pattern accross rows 
Q2i = [4:dif:16;19:dif:31;34:dif:46;49:dif:61]
        %ii
        %amount each value changes accross columns
dif = 15;
        %create the matrix column by columnn with the pattern set by dif
Q2ii = [4:dif:49;7:dif:52;10:dif:55;13:dif:58;16:dif:61]'
        %iii
        %make the first array from a 1d vector (from the fist to last number spaced by how much each value changes accross rows.)
dif=3;
        %make the vector then reshape and transpose it.
Q2111 = reshape(4:dif:61,5,4)'
        %
%************************************************question 3************************************************


p1=zeros(2,3)
p2=[1:3]
p3=3* ones(2,3)
p4 = eye(3,3)
p5=ones(1,3)
p6=5*ones(1,3)

pFinal=[[p1;p2;p3], [p4;p5;p6]]

%finish this

%************************************************question 4************************************************
%The goal is to make a 6x5 random matrix of integers from 12 to 25 and make several submatrices.
        %make the random matrix
Mrand = randi([12,25],6,5)
        %i
        %make a matrix with the first third and fifth columns
Q4i = Mrand(:,[1,3,5]);
        %ii
        %make a matrix with the first second and fourth rows
Q4ii = Mrand([1,2,4,],:);
        %iii
        %Create a 3 × 3 matrix from the second, fourth, and sixth rows and the first, second, and last columns of the original 
Q4iii = Mrand([2,4,6],[1,2,end]);
        %iv
        %turn the original matrix into a single row, with reading the elements across each column
Q4iv = reshape(Mrand',1,[])

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
disp('the two are the same because of the distributive property')
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
%{
The goal is to create a struct array with the following fields and their given classes:
• College name (char)
• Semester (char)
• Enrollment (double)
and populate it
%}
        %create the struct (with the form 'char','char',double)
student = struct('College_name',{''},'semester',{''},'enrolment',{});
        %values to populate it with (in groups of three)
College_names={'pima','UofA','ASU'};
semesters={'Fall','Spring','Summer'};
enrolments={221201,2022,2023};

        %populate the 3 struct indices (i)
i=1
        student(i).College_name=College_names{i};
        student(i).semester=semesters{i};
        student(i).enrolment=enrolments{i};
i=2
        student(i).College_name=College_names{i};
        student(i).semester=semesters{i};
        student(i).enrolment=enrolments{i};
i=3
        student(i).College_name=College_names{i};
        student(i).semester=semesters{i};
        student(i).enrolment=enrolments{i};


        %display the struct info at the first element. Trying out sprintf in the process
line_item = sprintf('%s; %s; %d',student(1).College_name,student(1).semester,student(1).enrolment);
disp(line_item)

%************************************************question 8************************************************
        %cell array using the second student
line_item = [student(2).College_name,student(2).semester,num2cell([student(2).enrolment])]

disp(line_item)
