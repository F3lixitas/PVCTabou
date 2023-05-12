rand('state', sum(100*clock));
% Entrée de test

villes = [ 5, 9, 3, 4, 6, 7, 2, 5, 1, 6, 8, 7;
           2, 1, 3, 7 ,4, 6, 2, 8, 4, 2, 8, 3];

D=matrice_distance(villes)
ordre = [5, 2, 4, 9, 3, 8, 1, 10, 6, 11, 7, 12];
deltaP=calculDeltaP(ordre, D)