animal()  :- is_true('tem pelo'), is_true('tem glandulas mamarias'), mamiferos().
animal()  :- is_true('tem pele grossa e escamosa'), is_true('vive em ambiente terrestre'), repteis().
animal()  :-  is_true('tem bico'), is_true('tem pena'), aves().

is_true(Q) :-
        format("~w?\n", [Q]),
        read(sim).


mamiferos() :- is_true('é menor que uma maquina de lavar roupas?'), mamiferos_menores().
mamiferos_menores() :- is_true('é conhecido como o melhor amigo do homem'), is_true('late'), write('O animal que vc está pensando é: Cachorro.').
mamiferos_menores() :- is_true('mia'), is_true('quando pula, cai em pé'), write('O animal que vc está pensando é: Gato.').
mamiferos_menores() :- is_true('É famoso por participar em experimentos de laboratório'), is_true('Gosta de queijo'), write('O animal que vc está pensando é: Rato.').
mamiferos_menores() :- is_true('Tem pata parecida com de patos'), is_true('Tem uma estrutura semelhante a um bico?'), is_true('É um personagem do phineas e ferb'), write('O animal que vc está pensando é: Ornitorrinco.').
mamiferos_menores() :- is_true('Voa'), is_true('Gosta de Sangue'), is_true('O Batman teve trauma desse animal quando criança'), write('O animal que vc está pensando é: Morcego.').


mamiferos_menores() :- write('Parabéns, você me venceu!! Até a próxima.'), halt(0).

repteis() :- is_true('é pequeno'), is_true('anda na parede'), write('O animal que vc está pensando é: Lagartixa.').
repteis() :- is_true('é grade'), is_true('vive nas margens de rios'), write('O animal que vc está pensando é: Crocodilo.').

aves() :- is_true('Esse animal voa'), aves_voam().
aves() :- is_true('O seu ovo é consumido com muita frequencia'),is_true('É conhecida por sua versão pintadinha fazer grande sucesso com o publico infantil'), write('O animal que vc está pensando é: Galinha').
aves() :- is_true('Vive em ambiente frio'), is_true('Ele é o personagem principal do filme "happy feet"'), write('O animal que vc está pensando é: Pinguim').
aves() :- is_true('É conhecido como a maior ave'), is_true('É famoso por seu ovo ser muito grande'), write('O animal que vc está pensando é: Avestruz').


aves_voam() :- is_true('Se encontra em qualquer lugar'), is_true('Faz pru'), write('O animal que vc está pensando é: Pombo.').
aves_voam() :- is_true('É personagem do filme "Rio"'), is_true('É azul'), write('O animal que vc está pensando é: Arara azul.').
aves_voam() :- is_true('Existe um jogador de futsal com o mesmo nome deste animal'), write('O animal que vc está pensando é: Falcão').
