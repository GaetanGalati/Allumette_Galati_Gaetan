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

		ECRIRE "au joueur 1 :"
		player1 <- VRAI;//Le  joueur 1 joue
		
		REPETER
			ECRIRE "Entrez un nombre entre 1 et 3"
			LIRE choix
		JUSQU A (choix > 3) ou (choix < 0)

		SI (choix <= 3)
			al <- al - choix
	
		SINON SI (choix > 3)
			Ecrire "Votre nombre et trop grand"
		
		SI (player) ET (al > 1 ) ALORS
		player1 <- FAUX //Si le joueur 1 joue et qu'il reste des allumettes, c'est au joueur deux

		ECRIRE "Au joueur 2 :"
		LIRE choix

		REPETER
			ECRIRE "Entrez un nombre entre 0 et 3"
			LIRE choix
		JUSQU'A (choix > 3) ou (choix < 0)

		SI (choix <= 3)
			al <- al - choix
	
		SINON SI (choix > 3)
			Ecrire "Votre nombre et trop grand"

	JUSQU'A (al = NBMIN)

	si player1 ALORS
		ECRIRE ("Le joueur 2 a gagnier ! ")//SI le joueur 1 joue et qu'il ne reste plus d'allumette il a perdus
	SINON
		ECRIRE ("Le joueur 1 a gagnier ! ")


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
		
		player := 1;//Joueur = joueur 1
		
		TextColor ( yellow );
		writeln ('Au tour du joueur 1, choisisez un nombre entre 1 et 3');
		readln (choix);
		clrscr;
		{while (choix > 3) or (choix < 0) do
			begin
			writeln ('Entrez un bon choix');
			readln (choix);
			end;}


		if (choix <= 3) then
		begin
			al := al - choix;
		end

		if (choix > 3)then
			begin
				writeln('Nombre trop grand')
			end
			

		writeln ('Il reste: ',al,'allumetes');
		
	


        if (al > 1) and (player = 1)then // Si i reste des allumette et que le joueur un joue

        begin
        	
			player := 2;//Joueur = joueur 1
			writeln ('Au tour du joueur 2 choisisez un nombre entre 1 et 3');
		
			readln (choix);
			clrscr;


			if (choix <= 3) then
			begin
				al := al - choix;
			end

			if (choix > 3)then
			begin
				writeln('Nombre trop grand')
			end

			TextColor ( yellow );
			writeln ('Il reste: ',al,'allumetes');
			TextColor (white);


		end
	else
		begin
			readln();
		end
	end;

	until (al < 1);//Si il reste plus d'une allumette la boucle recomence 

	if (al <= 0) then
		al := 0;


	if (al = 0) then
		TextColor (red);
		writeln ('Le joueur: ',player,' a perdus ! ');

	
readln ();
END.
