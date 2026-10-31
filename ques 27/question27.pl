person(alice, date(12, 5, 2002)).
person(bob,   date(3, 11, 2001)).
person(carla, date(21, 1, 2003)).

show_people :-
    person(Name, DOB),
    write(Name), write(' was born on '), writeln(DOB),
    fail.
show_people.