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

				SI  al -2 MOD 4 = 0 ALORS
					ECRIRE ('GlaDOS prend 1 allumette il en reste,'al)
					al <- al - 1
				
	
					SINON al -3 MOD 4 = 0 ALORS 									// 20 - 3 = 17
						ECRIRE ('GlaDOS prend 2 allumette il en reste,'al)
						al <- al - 2 											//al = 18
				
				
						SINON SI ((al -2 MOD )4 = 0) ET ((al -3 MOD 4) = 0)  ALORS
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


///PACA/

PROGRAM Jeu_Des_allumette_bot;

uses crt;


const

	nbmax = 21;
	nbmin = 0;


VAR

	choix,al : integer; //le choix et le nombre d'allumette qu'il reste
	player : boolean; // Si le joueur joue



BEGIN

	randomize;

	clrscr;
	al := 21;
	choix := 0;

	TextColor (white);
	writeln ('                | Le jeu des allumetes |             ');
	writeln ('                   Appuiez sur Entrez              ');
	readln ();
	clrscr;

	readln ();
	clrscr;

	REPEAT //DEBUT DU JEU
		begin
		
		player := true;// Le joueur joue
		

		writeln ('Au tour du joueur 1 choisisez un nombre entre 1 et 3');
		readln (choix);
		clrscr;
		{while (choix > 3) or (choix < 0) do
			begin
			writeln ('Entrez un bon choix');
			readln (choix);
			end;}


		if (choix = 1) then
			al := al -1;

		if (choix = 2)then
			al := al -2;

		if (choix = 3)then
			al := al -3;
		if (choix > 3)then
			writeln ('Trop grand');

		writeln ('Il reste: ',al,'allumetes');
		
	


        if (al > 1) and (player)then //Si il reste plus d'une allumette et que le joueur joue....

        begin

			
		
			writeln ('Au tour de GlaDOS !');
			choix := random(3)+1;
			writeln ('je prend ',choix ,' allumetes ! ');
			readln();
		
			
			clrscr;

			

				if  ((al-2)MOD 4 = 0) then
				begin
					writeln ('GlaDOS prend 1 allumette il en reste',al);
					al := al - 1
				end
				
	
					else ((al-3)MOD 4 = 0) then 	
					begin								// 20 - 3 = 17
						writeln ('GlaDOS prend 2 allumette il en reste',al)
						al := al - 2
					end;					//al = 18
					
				
						else  ((al-2)MOD 4 = 0)  and ((al-3)MOD 4 = 0)  then
						begin
							al := al - (aléatoire entre 1 et 3)
						end;
		
	until (al < 1);

	if (al <= 0) then
		al := 0;


	if (al = 0) and (player) then
		begin
		TextColor (lightred);
		writeln ('Le joueur: a perdus ! ');
		end
	else if (al > 1) and (player = false) then
		begin
		TextColor (green);
		writeln ('Coeur corrompue a 100 % ! GlaDOS a perdus...')
		end;


	
readln ();
END.
