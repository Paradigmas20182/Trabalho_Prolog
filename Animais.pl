animal()  :- is_true('tem pelo'), is_true('tem glandulas mamarias'), mamiferos().
animal()  :- is_true('tem pele grossa e escamosa'), is_true('vive em ambiente terrestre'), repteis().
animal()  :-  is_true('tem bico'), is_true('tem pena'), aves().

is_true(Q) :-
        format("~w?\n", [Q]),
        read(sim).


mamiferos() :- is_true('é menor que uma maquina de lavar roupas?'), mamiferos_menores().
mamiferos() :- is_true('É conhecido como rei da floresta'), is_true('Tem juba'), write('O animal que vc está pensando é: Leão.').
mamiferos() :- is_true('Tem um pescoço muito grande'), is_true('Um restaurante famoso utiliza esse animal como sua logomarca'), write('O animal que vc está pensando é: Girrafa').
mamiferos() :- is_true('Os humanos comsumem amplamente sua carne e leite'), is_true('Faz mu'), write('O animal que vc está pensando é: Vaca').
mamiferos() :- is_true('O animal relincha'), is_true('É amplamente usado para montaria'), write('O animal que vc está pensando é: Cavalo').
mamiferos() :- is_true('É um primata'), is_true('Gosta de bananae'), write('O animal que vc está pensando é: Gorila').
mamiferos() :- is_true('Tem tromba'), is_true('É o personagem principal do filme dumbo'), write('O animal que vc está pensando é: Elefante').
mamiferos() :- is_true('Esse animal hiberna'), is_true('É o personagem principal do filme zé colmeia'), write('O animal que vc está pensando é: Urso').
mamiferos() :- is_true('Esse animal anda pulando'), is_true('São conhecidos como boxeadores, pela forma como lutam'), write('O animal que vc está pensando é: Canguru').
mamiferos_menores() :- is_true('é conhecido como o melhor amigo do homem'), is_true('late'), write('O animal que vc está pensando é: Cachorro.').
mamiferos_menores() :- is_true('mia'), is_true('quando pula, cai em pé'), write('O animal que vc está pensando é: Gato.').
mamiferos_menores() :- is_true('É famoso por participar em experimentos de laboratório'), is_true('Gosta de queijo'), write('O animal que vc está pensando é: Rato.').
mamiferos_menores() :- is_true('Tem pata parecida com de patos'), is_true('Tem uma estrutura semelhante a um bico?'), is_true('É um personagem do phineas e ferb'), write('O animal que vc está pensando é: Ornitorrinco.').
mamiferos_menores() :- is_true('Voa'), is_true('Gosta de Sangue'), is_true('O Batman teve trauma desse animal quando criança'), write('O animal que vc está pensando é: Morcego.').


mamiferos_menores() :- write('Parabéns, você me venceu!! Até a próxima.'), halt(0).

repteis() :- is_true('é pequeno'), is_true('anda na parede'), write('O animal que vc está pensando é: Lagartixa.').
repteis() :- is_true('é grade'), is_true('vive nas margens de rios'), write('O animal que vc está pensando é: Crocodilo.').

aves() :- is_true('se encontra em qualquer lugar'), is_true('faz pru'), write('O animal que vc está pensando é: Pombo.').
aves() :- is_true('é personagem do filme "Rio"'), is_true('é azul'), write('O animal que vc está pensando é: Arara azul.').

% mamiferos() :- is_true(''), is_true(''), write('O animal que vc está pensando é:').
