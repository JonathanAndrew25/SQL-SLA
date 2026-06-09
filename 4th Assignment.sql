select upper('Sanjay Kumar') as Upper_case;

select upper(rpad(lpad(substring('Sanjay Kumar',8,5),7,'%'),9,'%')) as sub_string;
