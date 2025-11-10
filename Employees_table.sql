Create table employees(
emp_id serial primary key,
emp_name varchar not null,
email varchar not null,
phone int unique not null,
Salary numeric(10,2) not null,
hire_date date not null check(hire_date <=current_date),
dept_id int not null,
foreign key (dept_id) references departments

);

select * from employees;

ALTER TABLE employees 
ALTER COLUMN phone TYPE bigint;


INSERT INTO employees (emp_name, email, phone, salary, hire_date, dept_id) VALUES
('Rohit Sharma', 'rohit.sharma@example.com', '9876543201', 55000, '2022-03-15', 1),
('Priya Mehta', 'priya.mehta@example.com', '9876543202', 48000, '2021-07-10', 2),
('Amit Patil', 'amit.patil@example.com', '9876543203', 42000, '2023-01-20', 3),
('Neha Rane', 'neha.rane@example.com', '9876543204', 46000, '2020-11-05', 4),
('Suresh Kumar', 'suresh.kumar@example.com', '9876543205', 60000, '2019-09-14', 5),
('Pooja Nair', 'pooja.nair@example.com', '9876543206', 38000, '2022-06-30', 6),
('Aditya Joshi', 'aditya.joshi@example.com', '9876543207', 52000, '2021-02-18', 7),
('Sneha Kale', 'sneha.kale@example.com', '9876543208', 44000, '2020-10-22', 8),
('Vikas Deshmukh', 'vikas.deshmukh@example.com', '9876543209', 47000, '2022-04-12', 9),
('Anjali Ghosh', 'anjali.ghosh@example.com', '9876543210', 39000, '2023-07-25', 10),
('Ritesh Tiwari', 'ritesh.tiwari@example.com', '9876543211', 50000, '2021-01-11', 1),
('Meena Jadhav', 'meena.jadhav@example.com', '9876543212', 42000, '2022-05-06', 2),
('Vivek Gupta', 'vivek.gupta@example.com', '9876543213', 54000, '2020-08-09', 3),
('Simran Kaur', 'simran.kaur@example.com', '9876543214', 45000, '2019-12-15', 4),
('Karan Verma', 'karan.verma@example.com', '9876543215', 47000, '2022-11-10', 5),
('Divya More', 'divya.more@example.com', '9876543216', 40000, '2023-02-17', 6),
('Rahul Singh', 'rahul.singh@example.com', '9876543217', 56000, '2021-04-14', 7),
('Preeti Pawar', 'preeti.pawar@example.com', '9876543218', 43000, '2022-09-19', 8),
('Nitin Kale', 'nitin.kale@example.com', '9876543219', 51000, '2020-06-25', 9),
('Snehal Patkar', 'snehal.patkar@example.com', '9876543220', 39000, '2023-05-01', 10),
('Ajay Chavan', 'ajay.chavan@example.com', '9876543221', 60000, '2019-05-13', 1),
('Rina Fernandes', 'rina.fernandes@example.com', '9876543222', 47000, '2021-09-08', 2),
('Tushar Patwardhan', 'tushar.patwardhan@example.com', '9876543223', 55000, '2022-03-03', 3),
('Manisha Shetty', 'manisha.shetty@example.com', '9876543224', 41000, '2020-12-28', 4),
('Deepak Bansal', 'deepak.bansal@example.com', '9876543225', 58000, '2023-06-21', 5),
('Akshay More', 'akshay.more@example.com', '9876543226', 46000, '2021-10-16', 6),
('Pallavi Jain', 'pallavi.jain@example.com', '9876543227', 49000, '2022-02-05', 7),
('Sanjay Yadav', 'sanjay.yadav@example.com', '9876543228', 51000, '2020-07-12', 8),
('Ritika Rao', 'ritika.rao@example.com', '9876543229', 43000, '2023-04-09', 9),
('Harshad Mane', 'harshad.mane@example.com', '9876543230', 38000, '2021-08-18', 10),
('Monica Naik', 'monica.naik@example.com', '9876543231', 49000, '2020-03-29', 1),
('Rohini Joshi', 'rohini.joshi@example.com', '9876543232', 46000, '2021-12-25', 2),
('Jayesh More', 'jayesh.more@example.com', '9876543233', 57000, '2023-03-30', 3),
('Kavita Shinde', 'kavita.shinde@example.com', '9876543234', 45000, '2020-09-14', 4),
('Sanket Gaikwad', 'sanket.gaikwad@example.com', '9876543235', 52000, '2019-11-02', 5),
('Ankita Kulkarni', 'ankita.kulkarni@example.com', '9876543236', 42000, '2021-05-19', 6),
('Sameer Pawar', 'sameer.pawar@example.com', '9876543237', 54000, '2022-08-27', 7),
('Vidya Patil', 'vidya.patil@example.com', '9876543238', 49000, '2023-01-04', 8),
('Mohit Thakur', 'mohit.thakur@example.com', '9876543239', 47000, '2020-04-15', 9),
('Rajesh Bhagat', 'rajesh.bhagat@example.com', '9876543240', 43000, '2022-10-23', 10),
('Anita Dey', 'anita.dey@example.com', '9876543241', 40000, '2019-06-11', 1),
('Tanmay Bhosale', 'tanmay.bhosale@example.com', '9876543242', 51000, '2021-07-09', 2),
('Smita Sawant', 'smita.sawant@example.com', '9876543243', 45000, '2022-05-12', 3),
('Gaurav Sharma', 'gaurav.sharma@example.com', '9876543244', 60000, '2020-01-19', 4),
('Yogita Lokhande', 'yogita.lokhande@example.com', '9876543245', 48000, '2023-07-28', 5),
('Nikhil Pawar', 'nikhil.pawar@example.com', '9876543246', 44000, '2021-09-22', 6),
('Ashwini Kadam', 'ashwini.kadam@example.com', '9876543247', 47000, '2022-03-11', 7),
('Rupali Shinde', 'rupali.shinde@example.com', '9876543248', 39000, '2020-08-08', 8),
('Omkar Jaiswal', 'omkar.jaiswal@example.com', '9876543249', 56000, '2021-11-05', 9),
('Isha Tiwari', 'isha.tiwari@example.com', '9876543250', 42000, '2023-02-14', 10);
