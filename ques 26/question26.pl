sum_to_n(0, 0).
sum_to_n(N, Sum) :-
    N > 0,
    Previous is N - 1,
    sum_to_n(Previous, PreviousSum),
    Sum is N + PreviousSum.