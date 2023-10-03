% Create a structure array to contain the following types of student data:
% ■ Student name.
% ■ Social Security number.
% ■ Email address.
% ■ Test score

student.name = 'John Smith';
student.SSN = '392-77-1786';
student.email = 'smithj@myschool.edu';
student.tests = [67,75,84];

size(student)
student

student(2).name = 'Mary Jones';
student(2).SSN = '431-56-9832';
student(2).email = 'jonesm@myschool.edu';
student(2).tests = [84,78,93];

size(student)
student