
is_true(Q) :-
        format("~w?\n", [Q]),
        read(sim).

end() :-
		write("Parabéns, você me venceu!! Até a próxima.\n"),
		halt(0).

animal()  :- is_true('Tem pelo'), is_true('Tem glandulas mamarias'), mamiferos().
animal()  :- is_true('Tem pele grossa e escamosa'), is_true('Põe ovos'), repteis().
animal()  :- is_true('Tem bico'), is_true('Tem pena'), aves().
animal()  :- is_true('É um animal aquático'), peixes().
animal()  :- is_true('Tem pele úmida'), is_true('Vivem uma parte de sua vida na água e uma parte na terra'), anfibios().
animal() :- end().

mamiferos() :- is_true('É menor que uma maquina de lavar roupas'), mamiferos_menores().
mamiferos() :- is_true('É conhecido como rei da floresta'), is_true('Tem juba'), write('O animal que vc está pensando é: Leão.').
mamiferos() :- is_true('Tem um pescoço muito grande'), is_true('Um restaurante famoso utiliza esse animal como sua logomarca'), write('O animal que vc está pensando é: Girrafa').
mamiferos() :- is_true('Os humanos consumem amplamente sua carne e leite'), is_true('Faz mu'), write('O animal que vc está pensando é: Vaca').
mamiferos() :- is_true('O animal relincha'), is_true('É amplamente usado para montaria'), write('O animal que vc está pensando é: Cavalo').
mamiferos() :- is_true('É um primata'), is_true('Gosta de banana'), write('O animal que vc está pensando é: Gorila').
mamiferos() :- is_true('Tem tromba'), is_true('É o personagem principal do filme dumbo'), write('O animal que vc está pensando é: Elefante').
mamiferos() :- is_true('Esse animal hiberna'), is_true('É o personagem principal do filme zé colmeia'), write('O animal que vc está pensando é: Urso').
mamiferos() :- is_true('Esse animal anda pulando'), is_true('São conhecidos como boxeadores, pela forma como lutam'), write('O animal que vc está pensando é: Canguru').
mamiferos() :- end().

mamiferos_menores() :- is_true('É conhecido como o melhor amigo do homem'), is_true('Esse animal late'), write('O animal que vc está pensando é: Cachorro.').
mamiferos_menores() :- is_true('Esse animal mia'), is_true('Quando pula, cai em pé'), write('O animal que vc está pensando é: Gato.').
mamiferos_menores() :- is_true('É famoso por participar em experimentos de laboratório'), is_true('Gosta de queijo'), write('O animal que vc está pensando é: Rato.').
mamiferos_menores() :- is_true('Tem pata parecida com de patos'), is_true('Tem uma estrutura semelhante a um bico'), is_true('É um personagem do phineas e ferb'), write('O animal que vc está pensando é: Ornitorrinco.').
mamiferos_menores() :- is_true('Voa'), is_true('Gosta de Sangue'), is_true('O Batman teve trauma desse animal quando criança'), write('O animal que vc está pensando é: Morcego.').
mamiferos_menores() :- is_true('Possui polegar'), is_true('Gosta de comer banana'), write('O animal que vc está pensando é: macaco.').
mamiferos_menores() :- is_true('É famoso por ser o protogonista do desenho Peppa Pig'), is_true('A figura desse animal é comumente usado como cofres'), write('O animal que vc está pensando é: Porco.').
mamiferos_menores() :- end().

peixes() :- is_true('É mamífero'), mamiferos_aquatico().
peixes() :- is_true('É conhecido como um dos maiores predadores aquaticos'), write('O animal que vc está pensando é: Tubarão').
peixes() :- is_true('Vive nos mares'), peixes_salgado().
peixes() :- is_true('É um animal atraido por sangue'), is_true('Esse animal geralmente ataca em cardume'), write('O animal que vc está pensando é: Piranha').
peixes() :- is_true('Tem coloração dourada'), is_true('É uma especie de peixe'), write('O animal que vc está pensando é: Dourado').
peixes() :- is_true('Da choque'), write('O animal que vc está pensando é: Enguia').
peixes() :- end().

mamiferos_aquatico() :- is_true('Pode ser considerado o maior animal aquatico'), write('O animal que vc está pensando é: Baleia').
mamiferos_aquatico() :- is_true('É o folclorico animal cor de rosa da amazonia'), is_true('É a estrela do filme free willy'), write('O animal que vc está pensando é: Golfinho').
mamiferos_aquatico() :- is_true('É famoso pelo gesto de bater palma'), write('O animal que vc está pensando é: Foca').
mamiferos_aquatico() :- end().

peixes_salgado() :- is_true('Possui filamentos que lembram a crina de um cavalo'), is_true('O macho que faz a gestação'), is_true('Nadam com o corpo na vertical'),write('O animal que vc está pensando é: Cavalo-Marinho.').
peixes_salgado() :- is_true('Tem o corpo em formato de estrela'), write('O animal que vc está pensando é: Estrela do Mar').
peixes_salgado() :- is_true('Tem a cabeça em formato de espada'), write('O animal que vc está pensando é: Peixe Espada').
peixes_salgado() :- is_true('Da choque'), write('O animal que vc está pensando é: Água Viva').
peixes_salgado() :- is_true('É a especie de peixe mais famosa de portugal'), is_true('É conhecido pelos trocadilhos envolvendo seu cheiro'), write('O animal que vc está pensando é: Bacalhau').
peixes_salgado() :- is_true('Tem cor avermelhada'), write('O animal que vc está pensando é: Salmão').
peixes_salgado() :- end().

repteis() :- is_true('Rasteija'), is_true('Tem especies venenosas'), write('O animal que vc está pensando é: Cobra.').
repteis() :- is_true('Anda na parede'), is_true('Gosta de comer baratas'), write('O animal que vc está pensando é: Lagartixa.').
repteis() :- is_true('Maior réptil vivo atualmente'), is_true('Vive nas margens de rios'), write('O animal que vc está pensando é: Crocodilo.').
repteis() :- is_true('Camufla-se'), is_true('Sua lingua estica'), write('O animal que vc está pensando é: Camaleão.').
repteis() :- is_true('Tem carapaça'), is_true('Anda devagar'), write('O animal que vc está pensando é: Tartaruga.').
repteis() :- is_true('Pode ser criado como animal de estimação'), is_true('É verde'), is_true('Tem Crista?'), write('O animal que vc está pensando é: Iguana.').
repteis() :- end()

aves() :- is_true('Esse animal voa'), aves_voam().
aves() :- is_true('O seu ovo é consumido com muita frequencia'),is_true('É conhecida por sua versão pintadinha fazer grande sucesso com o publico infantil'), write('O animal que vc está pensando é: Galinha').
aves() :- is_true('Vive em ambiente frio'), is_true('Ele é o personagem principal do filme "happy feet"'), write('O animal que vc está pensando é: Pinguim').
aves() :- is_true('É conhecido como a maior ave'), is_true('É famoso por seu ovo ser muito grande'), write('O animal que vc está pensando é: Avestruz').
aves() :- end().

aves_voam() :- is_true('Se encontra em qualquer lugar'), is_true('Faz pru'), write('O animal que vc está pensando é: Pombo.').
aves_voam() :- is_true('É personagem do filme "Rio"'), is_true('É azul'), write('O animal que vc está pensando é: Arara azul.').
aves_voam() :- is_true('Existe um jogador de futsal com o mesmo nome deste animal'), write('O animal que vc está pensando é: Falcão').
aves_voam() :- end().

anfibios() :- is_true('É conhecido por não lavar o pé'), write('O animal que vc está pensando é: Sapo').
anfibios() :- is_true('Vive em ambientes com lagoas'),is_true('É conhecida por ser semelhante á um sapo'), write('O animal que vc está pensando é: Rã').
anfibios() :- is_true('Rasteja'), write('O animal que vc está pensando é: Cobra cega').
anfibios() :- is_true('Possui calda'), write('O animal que vc está pensando é: Salamandra').
anfibios() :- end().

