SELECT * from droupout_stud;

SELECT `Gender`, count(*) as student_count_gender
from droupout_stud
group by `Gender`;

SELECT `Family_Size`, AVG(`Final_Grade`) AS Final_Avg
from droupout_stud
group  by `Family_Size`;

SELECT `Mother_Education` , `Father_Education`, AVG(`Final_Grade`) as Impact_Grade
from droupout_stud
group BY `Mother_Education`, `Father_Education`;

SELECT `Reason_for_Choosing_School` , avg(`Final_Grade`) as Average_Final_Grade
from droupout_stud
group BY `Reason_for_Choosing_School`;

SELECT `Internet_Access`, AVG(`Study_Time`) as impact_study_time , AVG(`Final_Grade`) as impact_final_grade
from droupout_stud
group BY `Internet_Access`;

SELECT `Attended_Nursery`, AVG(`Wants_Higher_Education`) as Wanting_Higher_Education
from droupout_stud 
group BY `Attended_Nursery`;

SELECT `Attended_Nursery`, AVG(CASE WHEN `Wants_Higher_Education` = 'yes' THEN 1 ELSE 0 END) AS Wanting_Higher_Education
FROM droupout_stud
GROUP BY Attended_Nursery;

SELECT `Weekend_Alcohol_Consumption` , AVG(`Final_Grade`) as Effect_of_Alchol_on_Grade
from droupout_stud 
group BY `Weekend_Alcohol_Consumption`;

SELECT `Family_Relationship`, AVG(`Number_of_Absences`) as Asent_on_relation
from droupout_stud 
group BY `Family_Relationship`;

SELECT `School_Support` , `Family_Support` , avg(`Final_Grade`) as support_impact_grade
from droupout_stud
group BY `School_Support` , `Family_Support`;

SELECT AVG(CASE WHEN `Dropped_Out` = 'True' THEN 1 ELSE 0 END) AS Dropout_Rate, 
       AVG(`Final_Grade`) AS Average_Final_Grade
FROM droupout_stud 
GROUP BY Family_Size, Internet_Access;

SELECT `Mother_Job` , `Father_Job`, AVG(`Final_Grade`) as parent_Job_impact_grade
from droupout_stud
group BY `Mother_Job` ,`Father_Job`;

SELECT `School` , avg(`Final_Grade`)
from droupout_stud 
group BY `School`;

SELECT `Travel_Time`, AVG(`Final_Grade`) AS Travel_time_impact_on_Grade
from droupout_stud 
group BY `Travel_Time`;

SELECT `Extra_Curricular_Activities` , AVG(`Final_Grade`)
from droupout_stud 
group BY `Extra_Curricular_Activities`

