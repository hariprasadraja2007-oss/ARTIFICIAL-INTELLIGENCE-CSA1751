
% Diet Suggestions Based on Disease

% Diabetes
diet(diabetes, oats).
diet(diabetes, vegetables).
diet(diabetes, whole_grains).

% Obesity
diet(obesity, fruits).
diet(obesity, vegetables).
diet(obesity, salads).

% Anemia
diet(anemia, spinach).
diet(anemia, beans).
diet(anemia, dates).

% High Blood Pressure
diet(high_bp, low_salt_food).
diet(high_bp, fruits).
diet(high_bp, vegetables).

% Rule to suggest diet

suggest_diet(Disease) :-
    diet(Disease, Food),
    write('Suggested food: '),
    write(Food),
    nl,
    fail.

suggest_diet(_).
