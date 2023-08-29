select  
    min(case when occupation = 'Doctor' then name end) 'Doctor',
    min(case when occupation = 'Professor' then name end) 'Professor',
    min(case when occupation = 'Singer' then name end) 'Singer',
    min(case when occupation = 'Actor' then name end) 'Actor'
from (select *, row_number() over (partition by occupation order by name) rn
  from occupations) t
group by rn