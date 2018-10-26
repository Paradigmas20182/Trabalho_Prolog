
start() :-
		write("\n-- Olá, eu sou Tim!! E consigo ler os seus pensamentos como em um passe de mágica!!!\n"),
		write("-- Acha que pode me vencer??\n"),
		write("-- Então ... Vamos lá pense em um animal, e irei advinhá-lo ...\n"),
		write("-- Responda com sim ou não, tudo bem? Ótimo!!!\n"),
		write("-- Quando estiver pronto digite ~ok~ ;)\n"),
		read(Confirm),
		% if else -> ( condition -> then_clause ; else_clause )
		(Confirm = 'ok' -> animal(); 
		write("-- Não entendi, vamos tentar de novo!!\n"), start()).

is_true(Q) :-
        format("~w?\n", [Q]),
        read(sim).

again() :-
		write("-- Ha ha ha, não te disse que eu era muito bom nesse jogo!!!\n"),
		write("-- Vamos lá, gostaria de tentar de novo?\n"),
		write("-- Talvez eu facilite para você na próxima.\n"),
		write("-- Digite ~sim~ para jogar comigo novamente e, ~nao~ para ir embora.\n"),
		read(Confirm), 
		(Confirm = 'sim' -> start();
		write("-- Tchau Tchau!\n"), halt(0)).

end() :-
		write("-- Parabéns, você me venceu!! Até a próxima.\n"),
		halt(0).

animal()  :- is_true('Tem pelo'), is_true('Tem glandulas mamarias'), mamiferos().
animal()  :- is_true('Tem pele grossa e escamosa'), is_true('Põe ovos'), repteis().
animal()  :- is_true('O animal tem bico'), is_true('Tem pena'), aves().
animal()  :- is_true('É um animal aquático'), peixes().
animal()  :- is_true('Tem pele úmida'), is_true('Vivem uma parte de sua vida na água e uma parte na terra'), anfibios().
animal() :- end().

mamiferos() :- is_true('É menor que uma maquina de lavar roupas'), mamiferos_menores().
mamiferos() :- is_true('É conhecido como rei da floresta'), is_true('Tem juba'), write('\n\nO animal que vc está pensando é: Leão.\n'), again.
mamiferos() :- is_true('Tem um pescoço muito grande'), is_true('Um restaurante famoso utiliza esse animal como sua logomarca'), write('\nO animal que vc está pensando é: Girrafa.\n'), again.
mamiferos() :- is_true('Os humanos consumem amplamente sua carne e leite'), is_true('Faz mu'), write('\nO animal que vc está pensando é: Vaca.\n'), again.
mamiferos() :- is_true('\nO animal relincha'), is_true('É amplamente usado para montaria'), write('\nO animal que vc está pensando é: Cavalo.\n'), again.
mamiferos() :- is_true('É um primata'), is_true('Gosta de banana'), write('\nO animal que vc está pensando é: Gorila.\n'), again.
mamiferos() :- is_true('Tem tromba'), is_true('É o personagem principal do filme dumbo'), write('\nO animal que vc está pensando é: Elefante.\n'), again.
mamiferos() :- is_true('Esse animal hiberna'), is_true('É o personagem principal do filme zé colmeia'), write('\nO animal que vc está pensando é: Urso.\n'), again.
mamiferos() :- is_true('Esse animal anda pulando'), is_true('São conhecidos como boxeadores, pela forma como lutam'), write('\nO animal que vc está pensando é: Canguru.\n'), again.
mamiferos() :- end().

mamiferos_menores() :- is_true('É conhecido como o melhor amigo do homem'), is_true('Esse animal late'), write('\nO animal que vc está pensando é: Cachorro.\n'), again.
mamiferos_menores() :- is_true('Esse animal mia'), is_true('Quando pula, cai em pé'), write('\nO animal que vc está pensando é: Gato.\n'), again.
mamiferos_menores() :- is_true('É famoso por participar em experimentos de laboratório'), is_true('Gosta de queijo'), write('\nO animal que vc está pensando é: Rato.\n'), again.
mamiferos_menores() :- is_true('Tem pata parecida com de patos'), is_true('Tem uma estrutura semelhante a um bico'), is_true('É um personagem do phineas e ferb'), write('\nO animal que vc está pensando é: Ornitorrinco.\n'), again.
mamiferos_menores() :- is_true('Voa'), is_true('Gosta de Sangue'), is_true('O Batman teve trauma desse animal quando criança'), write('\nO animal que vc está pensando é: Morcego.\n'), again.
mamiferos_menores() :- is_true('Possui polegar'), is_true('Gosta de comer banana'), write('\nO animal que vc está pensando é: MMcaco.\n'), again.
mamiferos_menores() :- is_true('É famoso por ser o protogonista do desenho Peppa Pig'), is_true('A figura desse animal é comumente usado como cofres'), write('\nO animal que vc está pensando é: Porco.\n'), again.
mamiferos_menores() :- end().

peixes() :- is_true('É mamífero'), mamiferos_aquatico().
peixes() :- is_true('É conhecido como um dos maiores predadores aquaticos'), write('\nO animal que vc está pensando é: Tubarão.\n'), again.
peixes() :- is_true('Vive nos mares'), peixes_salgado().
peixes() :- is_true('É um animal atraido por sangue'), is_true('Esse animal geralmente ataca em cardume'), write('\nO animal que vc está pensando é: Piranha.\n'), again.
peixes() :- is_true('Tem coloração dourada'), is_true('É uma especie de peixe'), write('\nO animal que vc está pensando é: Dourado.\n'), again.
peixes() :- is_true('Da choque'), write('\nO animal que vc está pensando é: Enguia'), again.
peixes() :- end().

mamiferos_aquatico() :- is_true('Pode ser considerado o maior animal aquatico'), write('\nO animal que vc está pensando é: Baleia.\n'), again.
mamiferos_aquatico() :- is_true('É o folclorico animal cor de rosa da amazonia'), is_true('É a estrela do filme free willy'), write('\nO animal que vc está pensando é: Golfinho.\n'), again.
mamiferos_aquatico() :- is_true('É famoso pelo gesto de bater palma'), write('\nO animal que vc está pensando é: Foca.\n'), again.
mamiferos_aquatico() :- end().

peixes_salgado() :- is_true('Possui filamentos que lembram a crina de um cavalo'), is_true('O macho que faz a gestação'), is_true('Nadam com o corpo na vertical'),write('\nO animal que vc está pensando é: Cavalo-Marinho.\n'), again.
peixes_salgado() :- is_true('Tem o corpo em formato de estrela'), write('\nO animal que vc está pensando é: Estrela do Mar.\n'), again.
peixes_salgado() :- is_true('Tem a cabeça em formato de espada'), write('\nO animal que vc está pensando é: Peixe Espada.\n'), again.
peixes_salgado() :- is_true('Da choque'), write('\nO animal que vc está pensando é: Água Viva'), again.
peixes_salgado() :- is_true('É a especie de peixe mais famosa de portugal'), is_true('É conhecido pelos trocadilhos envolvendo seu cheiro'), write('\nO animal que vc está pensando é: Bacalhau.\n'), again.
peixes_salgado() :- is_true('Tem cor avermelhada'), write('\nO animal que vc está pensando é: Salmão'), again.
peixes_salgado() :- end().

repteis() :- is_true('Rasteija'), is_true('Tem especies venenosas'), write('\nO animal que vc está pensando é: Cobra.\n'), again.
repteis() :- is_true('Anda na parede'), is_true('Gosta de comer baratas'), write('\nO animal que vc está pensando é: Lagartixa.\n'), again.
repteis() :- is_true('Maior réptil vivo atualmente'), is_true('Vive nas margens de rios'), write('\nO animal que vc está pensando é: Crocodilo.\n'), again.
repteis() :- is_true('Camufla-se'), is_true('Sua lingua estica'), write('\nO animal que vc está pensando é: Camaleão.\n'), again.
repteis() :- is_true('Tem carapaça'), is_true('Anda devagar'), write('\nO animal que vc está pensando é: Tartaruga.\n'), again.
repteis() :- is_true('Pode ser criado como animal de estimação'), is_true('É verde'), is_true('Tem Crista?'), write('\nO animal que vc está pensando é: Iguana.\n'), again.
repteis() :- end()

aves() :- is_true('Esse animal voa'), aves_voam().
aves() :- is_true('O seu ovo é consumido com muita frequencia'),is_true('É conhecida por sua versão pintadinha fazer grande sucesso com o publico infantil'), write('\nO animal que vc está pensando é: Galinha.\n'), again.
aves() :- is_true('Vive em ambiente frio'), is_true('Ele é o personagem principal do filme "happy feet"'), write('\nO animal que vc está pensando é: Pinguim.\n'), again.
aves() :- is_true('É conhecido como a maior ave'), is_true('É famoso por seu ovo ser muito grande'), write('\nO animal que vc está pensando é: Avestruz.\n'), again.
aves() :- end().

aves_voam() :- is_true('Se encontra em qualquer lugar'), is_true('Faz pru'), write('\nO animal que vc está pensando é: Pombo.\n'), again.
aves_voam() :- is_true('É personagem do filme "Rio"'), is_true('É azul'), write('\nO animal que vc está pensando é: Arara azul.\n'), again.
aves_voam() :- is_true('Existe um jogador de futsal com o mesmo nome deste animal'), write('\nO animal que vc está pensando é: Falcão.\n'), again.
aves_voam() :- end().

anfibios() :- is_true('É conhecido por não lavar o pé'), write('\nO animal que vc está pensando é: Sapo.\n'), again.
anfibios() :- is_true('Vive em ambientes com lagoas'),is_true('É conhecida por ser semelhante á um sapo'), write('\nO animal que vc está pensando é: Rã.\n'), again.
anfibios() :- is_true('Rasteja'), write('\nO animal que vc está pensando é: Cobra cega.\n'), again.
anfibios() :- is_true('Possui calda'), write('\nO animal que vc está pensando é: Salamandra.\n'), again.
anfibios() :- end().

