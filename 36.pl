
% Best First Search Algorithm

% Graph connections
edge(a,b).
edge(a,c).
edge(b,d).
edge(b,e).
edge(c,f).
edge(c,g).
edge(d,h).
edge(e,h).
edge(f,h).
edge(g,h).

% Heuristic values
heuristic(a,7).
heuristic(b,6).
heuristic(c,4).
heuristic(d,5).
heuristic(e,3).
heuristic(f,2).
heuristic(g,3).
heuristic(h,0).

% Best First Search
best_first(Start, Goal, Path) :-
    heuristic(Start, H),
    best_search([H-[Start]], Goal, [], RevPath),
    reverse(RevPath, Path).

% Goal reached
best_search([_-[Goal|Path]|_], Goal, _, [Goal|Path]).

% Expand the selected node
best_search([_-[Node|Path]|Frontier], Goal, Visited, Result) :-
    member(Node, Visited),
    best_search(Frontier, Goal, Visited, Result).

best_search([_-[Node|Path]|Frontier], Goal, Visited, Result) :-
    \+ member(Node, Visited),
    findall(H-[Next,Node|Path],
        (edge(Node,Next),
         \+ member(Next,[Node|Path]),
         \+ member(Next,Visited),
         heuristic(Next,H)),
        Children),
    append(Frontier, Children, NewFrontier),
    keysort(NewFrontier, SortedFrontier),
    best_search(SortedFrontier, Goal, [Node|Visited], Result).
