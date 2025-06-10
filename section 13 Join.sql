

select * from dept_manager_dup
ORDER BY dept_no ;


select m.dept_no, m.emp_no, d.dept_name
from dept_manager_dup m
inner join
departments_dup d on m.dept_no = d.dept_no ;




SELECT
    e.emp_no,
    e.first_name,
    e.last_name,
    dm.dept_no,
    dm.from_date
FROM
    employees e
        LEFT JOIN
    dept_manager dm ON e.emp_no = dm.emp_no
WHERE
    e.last_name = 'Markovitch'
ORDER BY dm.dept_no DESC , e.emp_no;
