{ALGORITHME Jeu_Des_allumette
//BUT: Réaliser un jeu des allumetes
//ENTREES: 1,2,3 le choix du joueurs (1 ou 2)
//SORTIES: Le jeu nous dit se qu'il se passe


CONS

	nbmax <- 21
	nbmin <- 0


VAR

	choix,al : ENTIER
	player1 : booleane

DEBUT
	
	
	al <- 21

	REPETER

		ECRIRE 'au joueur 1 :'
		player1 <- VRAI;
		
		REPETER
			ECRIRE 'Entrez un nombre entre 1 et 3'
			LIRE choix
		JUSQU'A (choix > 3) ou (choix < 0)

		SI (choix = 1)
			al <- al -1
		SINON SI (choix = 2)
			al <- al -2
		SINON SI (choix = 3)
			al <- al -3
		
		SI (player) ET (al > 1 ) ALORS
		player1 <- FAUX

		ECRIRE 'Au joueur 2 :'
		LIRE choix

		REPETER
			ECRIRE 'Entrez un nombre entre 0 et 3"
			LIRE choix
		JUSQU'A (choix > 3) ou (choix < 0)

		SINON SI (choix = 1)
			al <- al -1
		SINON SI (choix = 2)
			al <- al -2
		SINON SI (choix = 3)
			al <- al -3

	JUSQU'A (al = NBMIN)

	si player1 ALORS
		ECRIRE ('Le joueur 1 a gagnier ! ')
	SINON
		ECRIRE ('Le joueur 2 a gagnier ! ')


FIN
}



PROGRAM Jeu_Des_allumette;

uses crt;


const

	nbmax = 21;
	nbmin = 0;


VAR

	choix,al,player : integer;



BEGIN

	clrscr;
	al := 21;
	choix := 0;

	TextColor (white);
	writeln ('                | Le jeu des allumetes |             ');
	writeln ('                   Appuiez sur Entrez              ');
	readln ();
	clrscr;

	REPEAT
		begin
		
		player := 1;
		
		TextColor ( yellow );
		writeln ('Au tour du joueur 1, choisisez un nombre entre 1 et 3');
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

		writeln ('Il reste: ',al,'allumetes');
		
	


        if (al > 1) and (player = 1)then

        begin
        	
			player := 2;	
			writeln ('Au tour du joueur 2 choisisez un nombre entre 1 et 3');
		
			readln (choix);
			clrscr;


			
			{while (choix < 3) or (choix > 0) do
			begin
			writeln ('Entrez un bon choix');
			readln (choix);
			end;}


			if (choix = 1) and (al > 0) then
				al := al -1;

			if (choix = 2) and (al > 0 ) then
				al := al -2;

			if (choix = 3) and (al > 0) then
				al := al -3;

			TextColor ( yellow );
			writeln ('Il reste: ',al,'allumetes');
			TextColor (white);


		end
	else
		begin
			readln();
		end
	end;

	until (al < 1);

	if (al <= 0) then
		al := 0;


	if (al = 0) then
		TextColor (red);
		writeln ('Le joueur: ',player,' a perdus ! ');

	
readln ();
END.
