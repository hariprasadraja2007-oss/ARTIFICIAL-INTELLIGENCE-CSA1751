
% Backward Chaining Algorithm

% Facts
fact(sunny).
fact(warm).
fact(has_money).

% Rules
rule(can_go_picnic, [sunny, warm]).
rule(happy, [can_go_picnic, has_money]).

% Backward Chaining
prove(Goal) :-
    fact(Goal).

prove(Goal) :-
    rule(Goal, Conditions),
    prove_all(Conditions).

% Check all conditions
prove_all([]).

prove_all([H|T]) :-
    prove(H),
    prove_all(T).
