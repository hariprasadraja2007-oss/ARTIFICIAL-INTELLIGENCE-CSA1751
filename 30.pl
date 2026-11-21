
% Towers of Hanoi using Recursion

% Base Condition
hanoi(1, Source, Destination, _) :-
    write('Move disk from '),
    write(Source),
    write(' to '),
    write(Destination),
    nl.

% Recursive Condition
hanoi(N, Source, Destination, Auxiliary) :-
    N > 1,
    M is N - 1,

    % Move N-1 disks to Auxiliary
    hanoi(M, Source, Auxiliary, Destination),

    % Move largest disk to Destination
    hanoi(1, Source, Destination, Auxiliary),

    % Move N-1 disks to Destination
    hanoi(M, Auxiliary, Destination, Source).
