use employees ;

## sec 13,  Count ()


select * from salaries
order by salary desc
limit 10;

select count(salary) from salaries ;


SELECT
    COUNT(DISTINCT from_date)
FROM
    salaries;

 SELECT COUNT(DISTINCT DEPT_NO) FROM dept_emp ;

## SUM

select sum(salary) from salaries ;

select sum(salary) from salaries
where
from_date > "1997-01-01" ;## From after  (>)

select sum(salary) from salaries
where
from_date < "1997-01-01" ; ## From before (<)


## max and min

# Which is the lowest employee number in the database?
select min(emp_no) from  employees ;

#Which is the hight employee number in the database?
select max(emp_no) from  employees ;


# AVG NUMBER ------
SELECT AVG(SALARY) FROM salaries
where
from_date > "1997-01-01" ;

# Round ()  ------
select round(avg(salary),3) from salaries
where
from_date > "1997-01-01" ;

## IFNULL() AND COALESCE ()

SELECT
    dept_no,
    IFNULL(dept_name,
            'Department name not provided') AS dept_name
FROM
    departments_dup;

SELECT
    dept_no,
    dept_name,
    COALESCE(dept_no, dept_name) AS dept_info
FROM
    departments_dup
ORDER BY dept_no ASC;


