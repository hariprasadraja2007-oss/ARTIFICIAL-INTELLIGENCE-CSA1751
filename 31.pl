
% Bird Database

bird(parrot).
bird(eagle).
bird(pigeon).
bird(sparrow).
bird(ostrich).
bird(penguin).

% Birds that can fly

can_fly(parrot).
can_fly(eagle).
can_fly(pigeon).
can_fly(sparrow).

% Birds that cannot fly

cannot_fly(ostrich).
cannot_fly(penguin).

% Rule to check flying ability

check_flight(Bird) :-
    can_fly(Bird),
    write(Bird),
    write(' can fly.').

check_flight(Bird) :-
    cannot_fly(Bird),
    write(Bird),
    write(' cannot fly.').

check_flight(Bird) :-
    \+ can_fly(Bird),
    \+ cannot_fly(Bird),
    write('Bird information not available.').
