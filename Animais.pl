animal()  :- is_true('tem pelo'), is_true('tem glandulas mamarias'), mamiferos().
animal()  :- is_true('tem pele grossa e escamosa'), is_true('vive em ambiente terrestre'), repteis().
animal()  :-  is_true('tem bico'), is_true('tem pena'), aves().

is_true(Q) :-
        format("~w?\n", [Q]),
        read(sim).

mamiferos() :- is_true('quando esta feliz, ele balança o rabo'), is_true('late'), write('O animal que vc está pensando é: Cachorro.').
mamiferos() :- is_true('mia'), is_true('quando pula, cai em pé'), write('O animal que vc está pensando é: Gato.').

repteis() :- is_true('é pequeno'), is_true('anda na parede'), write('O animal que vc está pensando é: Lagartixa.').
repteis() :- is_true('é grade'), is_true('vive nas margens de rios'), write('O animal que vc está pensando é: Crocodilo.').

aves() :- is_true('se encontra em qualquer lugar'), is_true('faz pru'), write('O animal que vc está pensando é: Pombo.').
aves() :- is_true('é personagem do filme "Rio"'), is_true('é azul'), write('O animal que vc está pensando é: Arara azul.').
