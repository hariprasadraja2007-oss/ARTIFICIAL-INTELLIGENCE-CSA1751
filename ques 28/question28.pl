teaches(mr_rao, mathematics).
teaches(ms_singh, physics).
teaches(mr_kumar, computer_science).

enrolled(anu, mathematics).
enrolled(anu, computer_science).
enrolled(raj, physics).

student_teacher_subject(Student, Teacher, Subject) :-
    enrolled(Student, Subject),
    teaches(Teacher, Subject).