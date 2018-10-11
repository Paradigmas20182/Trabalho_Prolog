animal(dog)  :- is_true('tem pelo'), is_true('late').
animal(cat)  :- is_true('tem pelo'), is_true('mia').
animal(duck) :- is_true('tem pena'), is_true('Quack').
animal(chicken) :- is_true('tem pena'), is_true('Coh').

is_true(Q) :-
        format("~w?\n", [Q]),
        read(yes).
