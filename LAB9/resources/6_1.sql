CREATE FUNCTION task_6_1 (@Grade float)
RETURNS TABLE
AS RETURN
SELECT DISTINCT dbo.studenti.Nume_Student, dbo.studenti.Prenume_Student, dbo.discipline.Disciplina
FROM         dbo.studenti INNER JOIN
                      dbo.studenti_reusita ON dbo.studenti.Id_Student = dbo.studenti_reusita.Id_Student INNER JOIN
                      dbo.discipline ON dbo.studenti_reusita.Id_Disciplina = dbo.discipline.Id_Disciplina
WHERE     (dbo.studenti_reusita.Nota > @Grade)
GO

SELECT * FROM task_6_1(8)

