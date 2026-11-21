
% Gender Facts

female(pam).
female(liz).
female(ann).
female(pat).

male(tom).
male(bob).
male(jim).

% Parent Relationships

parent(pam, bob).
parent(tom, bob).

parent(pam, liz).
parent(tom, liz).

parent(bob, ann).
parent(liz, ann).

parent(bob, jim).
parent(liz, jim).

% Mother Relationship

mother(X, Y) :-
    female(X),
    parent(X, Y).

% Father Relationship

father(X, Y) :-
    male(X),
    parent(X, Y).

% Grandfather Relationship

grandfather(X, Y) :-
    male(X),
    parent(X, Z),
    parent(Z, Y).

% Grandmother Relationship

grandmother(X, Y) :-
    female(X),
    parent(X, Z),
    parent(Z, Y).

% Sister Relationship

sister(X, Y) :-
    female(X),
    parent(Z, X),
    parent(Z, Y),
    X \= Y.

% Brother Relationship

brother(X, Y) :-
    male(X),
    parent(Z, X),
    parent(Z, Y),
    X \= Y.
