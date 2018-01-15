{Algorithme: Allumette_bot
//BUT: jeu des allumette
//ENTREE: un nb d'allumette
//SORTIE: un nb d'allumette



CONST

	NBMAX: 21
	NBMIN: 1


VAR
	
	choix,al : ENTIER
	player : BOLLEANE




	al <- NBMAX

	REPETER
		debut
			SI (al> 1) 
				(player <- VRAI)			//Player = vrai

			ECRIRE ('Au joueur')
			LIRE (choix)						// 1 

			SI (choix = 1) ALORS
				al <- al -1						//al = 20
			SI (choix = 2) ALORS
				al <-al -2
			SI (choix = 3) ALORS
				al <- al -3
			SI (choix > 3) ALORS
				ECRIRE ('Nombre trop grand !')

			ECRIRE ('Il reste',al) 				// Il reste 20

			SI (al > 1) ET (player) ALORS
				player <- FAUX

				SI  al -2 MOD 4 ALORS
					ECRIRE ('GlaDOS prend 1 allumette il en reste,'al)
					al <- al - 1
				
	
					SINON al -3 MOD 4 ALORS 									// 20 - 3 = 17
						ECRIRE ('GlaDOS prend 2 allumette il en reste,'al)
						al <- al - 2 											//al = 18
				
				
						SINON SI (al -2 MOD 4) ET (al -3 MOD 4)  ALORS
							al <- al - (aléatoire entre 1 et 3)
						FINSI

					FINSI

				FINSI


	JUSQU'A (al <= NBMIN)
	FINREPETER

	SI (player) ALORS																
		ECRIRE ('Le joueur a gagnier ! ')
	SINON 
		ECRIRE ('GlaDOS a gagnier...')
	FINSI
FIN}




CONST

	NBMAX : 21;
	NBMIN : 1;


VAR
	
	choix,al : INTEGER;
	player : BOOL;


BEGIN

	al := NBMAX;

	repeat
		begin
			if (al> 1) 
				(player <- true);		//Player = vrai

			writeln ('Au joueur');
			LIRE (choix);						// 1 

			if (choix = 1) then
				al := al -1;						//al = 20
			if (choix = 2) then
				al := al -2
			if (choix = 3) then
				al := al -3
			if (choix := 3) then
				writeln ('Nombre trop grand !');
				writeln ('Il reste',al) ;				// Il reste 20

			if (al > 1) AND (player) then
				player := FAUX

				if  al -2 MOD 4 then
					writeln ('GlaDOS prend 1 allumette il en reste,'al);
					al := al - 1;
				
	
					else al -3 MOD 4 then 									// 20 - 3 = 17
						writeln ('GlaDOS prend 2 allumette il en reste,'al);
						al := al - 2; 											//al = 18
				
				
						else if (al -2 MOD 4) ET (al -3 MOD 4)  then
							al := al - (aléatoire entre 1 et 3);
						end

					end

				end


	until (al <= NBMIN)
	end

	if (player) then																
		writeln ('Le joueur a gagnier ! ');
	else 
		writeln ('GlaDOS a gagnier...');
	end
END
