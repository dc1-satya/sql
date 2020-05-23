You can use IN clause to replace many OR conditions

INSERT INTO `employee_tbl1` (`id`, `name`, `work_date`, `daily_typing_pages`) VALUES (NULL, 'Alex', '2020-05-01', '10'), (NULL, 'Benn', '2020-05-01', '15');

SELECT * FROM employee_tbl1

id	name	work_date	daily_typing_pages	
1	Alex	2020-05-01	10	
2	Benn	2020-05-01	15	
3	Alex	2020-05-02	20	
4	Benn	2020-05-02	30	
5	Alex	2020-05-03	40	
6	Benn	2020-05-03	18	


  SELECT * FROM employee_tbl1 
    WHERE daily_typing_pages= 10 OR  
    daily_typing_pages= 20 OR  daily_typing_pages= 30

  id	name	work_date	daily_typing_pages	
  1	Alex	2020-05-01	10	
  3	Alex	2020-05-02	20	
  4	Benn	2020-05-02	30	

  Using IN

SELECT * FROM employee_tbl1 WHERE daily_typing_pages IN ( 10,20,30 )

id	name	work_date	daily_typing_pages	
1	Alex	2020-05-01	10	
3	Alex	2020-05-02	20	
4	Benn	2020-05-02	30	

   


