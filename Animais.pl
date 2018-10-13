animal()  :- is_true('tem pelo'), is_true('tem glandulas mamarias'), mamiferos().
animal()  :- is_true('tem pele grossa e escamosa'), is_true('vive em ambiente terrestre'), repteis().
animal()  :- is_true('tem bico'), is_true('tem pena'), aves().
animal()  :- is_true('Vive toda a sua vida dentro da água'), peixes().



is_true(Q) :-
        format("~w?\n", [Q]),
        read(sim).


mamiferos() :- is_true('é menor que uma maquina de lavar roupas'), mamiferos_menores().
mamiferos_menores() :- is_true('é conhecido como o melhor amigo do homem'), is_true('late'), write('O animal que vc está pensando é: Cachorro.').
mamiferos_menores() :- is_true('mia'), is_true('quando pula, cai em pé'), write('O animal que vc está pensando é: Gato.').
mamiferos_menores() :- is_true('É famoso por participar em experimentos de laboratório'), is_true('Gosta de queijo'), write('O animal que vc está pensando é: Rato.').
mamiferos_menores() :- is_true('Tem pata parecida com de patos'), is_true('Tem uma estrutura semelhante a um bico'), is_true('É um personagem do phineas e ferb'), write('O animal que vc está pensando é: Ornitorrinco.').
mamiferos_menores() :- is_true('Voa'), is_true('Gosta de Sangue'), is_true('O Batman teve trauma desse animal quando criança'), write('O animal que vc está pensando é: Morcego.').
mamiferos_menores() :- is_true('Possui polegar'), is_true('Gosta de comer banana'), write('O animal que vc está pensando é: macaco.').
mamiferos_menores() :- is_true('É famoso por ser o protogonista do desenho Peppa Pig'), is_true('A figura desse animal é comumente usado como cofres'), write('O animal que vc está pensando é: Porco.').
mamiferos_menores() :- write('Parabéns, você me venceu!! Até a próxima.'), halt(0). 

peixes() :- is_true('Vive nos mares'), peixes_salgado().
peixes_salgado() :- is_true('Possui filamentos que lembram a crina de um cavalo'), is_true('O macho que faz a gestação'), is_true('Nadam com o corpo na vertical'),write('O animal que vc está pensando é: Cavalo-Marinho.').


repteis() :- is_true('é pequeno'), is_true('anda na parede'), write('O animal que vc está pensando é: Lagartixa.').
repteis() :- is_true('é grade'), is_true('vive nas margens de rios'), write('O animal que vc está pensando é: Crocodilo.').

aves() :- is_true('se encontra em qualquer lugar'), is_true('faz pru'), write('O animal que vc está pensando é: Pombo.').
aves() :- is_true('é personagem do filme "Rio"'), is_true('é azul'), write('O animal que vc está pensando é: Arara azul.').
