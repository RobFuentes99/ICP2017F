rng(131313);
students = 99;
StudentData = readtable('students.csv');
triple = randperm(students);
StudentTriple = cell(3,students/3);
for i = 1:students/3
    StudentTriple(:,i) = [StudentData.Student(triple(i)),StudentData.Student(Triple(students/i+1)), StudentData.Student(triple(2*students/i+1))];
end

cxlswrite(spreadsheet, StudentTriple);
        