
% Medical Diagnosis System

% Patient symptoms
symptom(patient1, fever).
symptom(patient1, cough).
symptom(patient1, body_pain).

symptom(patient2, fever).
symptom(patient2, chills).
symptom(patient2, headache).

symptom(patient3, sneezing).
symptom(patient3, cough).
symptom(patient3, runny_nose).

% Disease diagnosis rules
diagnosis(Patient, flu) :-
    symptom(Patient, fever),
    symptom(Patient, cough),
    symptom(Patient, body_pain).

diagnosis(Patient, malaria) :-
    symptom(Patient, fever),
    symptom(Patient, chills),
    symptom(Patient, headache).

diagnosis(Patient, common_cold) :-
    symptom(Patient, sneezing),
    symptom(Patient, cough),
    symptom(Patient, runny_nose).
