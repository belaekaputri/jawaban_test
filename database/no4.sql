DELIMITER //
CREATE PROCEDURE data_siswa_kelas_guru()
BEGIN
 select students.id as Student_Id, students.name as Student,students.age as Student_Age ,classes.id as Class_Id ,classes.name as Class,teachers.id as Teacher_Id,teachers.name as Teacher,teachers.subject as Teacher_Subject from students inner join classes on students.class_id=classes.id inner join teachers on classes.teacher_id=teachers.id order by classes.name asc;
END //

DELIMITER ;

/