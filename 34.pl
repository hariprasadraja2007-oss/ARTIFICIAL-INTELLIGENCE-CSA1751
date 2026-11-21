
% Monkey and Banana Problem

% Move 1: Monkey climbs onto the box
move(state(M, onfloor, M, hasnot),
     climb,
     state(M, onbox, M, hasnot)).

% Move 2: Monkey grasps the bananas
move(state(M, onbox, B, hasnot),
     grasp,
     state(M, onbox, B, has)).

% Goal condition
solve(state(_, _, _, has), []).

% Find the sequence of actions
solve(State, [Action|Rest]) :-
    move(State, Action, NextState),
    solve(NextState, Rest).
