//// -- LEVEL 1
//// -- Tables and References

// Creating tables
Table department {
  dept_no varchar [pk]
  dept_name varchar
}

Table dept_emp {
  emp_no int [pk]
  dept_no varchar [pk]
  from_date date
  to_date date
}

table dept_manger {
  dept_no varchar [pk]
  emp_no int [pk]
  from_date date
  to_date date
}

table titles {
  emp_no int [pk]
  titles varchar
  from_date date
  to_date date
}

table employees {
  emp_no int [pk]
  birth_date date
  first_name varchar
  laast_name varchar
  gender varchar
  hire_date date
}

table salaries {
  emp_no int [pk]
  salary int
  from_date date
  to_date date
}



Ref: "department"."dept_no" < "dept_emp"."dept_no"

Ref: "dept_manger"."dept_no" < "department"."dept_no"

Ref: "dept_manger"."emp_no" < "employees"."emp_no"

Ref: "employees"."emp_no" < "dept_emp"."emp_no"

Ref: "salaries"."emp_no" < "employees"."emp_no"

Ref: "titles"."emp_no" < "employees"."emp_no"
