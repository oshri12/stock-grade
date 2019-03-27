select Id_profession from profession where name_profession like N'ספרות%'
select id_profession from profession where name_profession=N'ספרות%'
INSERT INTO Grades (id_student,id_profession, grade)VALUES (200412553,'מתמטיקה',69);
SELECT AVG(grade) FROM Grades  where id_student='3365589'
DELETE FROM Grades WHERE id_student=200426558 and id_profession=13 ;