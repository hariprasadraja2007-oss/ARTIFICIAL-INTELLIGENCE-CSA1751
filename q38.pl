
% Initial facts
initial_facts([rain, cloudy]).

% Rules
rule(wet_ground, [rain]).
rule(carry_umbrella, [rain]).
rule(possible_rain, [cloudy]).
rule(slippery_road, [wet_ground]).
rule(safe_driving, [carry_umbrella, slippery_road]).

% Check whether all conditions are satisfied
satisfied([], _).

satisfied([H|T], Facts) :-
    member(H, Facts),
    satisfied(T, Facts).

% Forward chaining process
forward_chain(Facts, FinalFacts) :-
    findall(NewFact,
        (rule(NewFact, Conditions),
         satisfied(Conditions, Facts),
         \+ member(NewFact, Facts)),
        NewFacts),
    (NewFacts = [] ->
        FinalFacts = Facts
    ;
        append(Facts, NewFacts, UpdatedFacts),
        forward_chain(UpdatedFacts, FinalFacts)
    ).

% Display facts
display_facts([]).

display_facts([H|T]) :-
    write(H),
    nl,
    display_facts(T).

% Main program
run :-
    initial_facts(Facts),
    write('Initial Facts:'), nl,
    display_facts(Facts),
    forward_chain(Facts, FinalFacts),
    nl,
    write('Facts After Forward Chaining:'), nl,
    display_facts(FinalFacts).
