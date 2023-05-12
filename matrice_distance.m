function [M]=matrice_distance(villes)
% Entrée : ville : la matrice des positions des villes, qui a autant de
%                  colonnes que de villes et 2 lignes pour x et y
% Sortie : M : la matrice qui contient les distances entre chaque point de
%              l'espace
    if size(villes,1) ~= 2
        error("Erreur dans la fonction distance : Les villes doivent avoir des positions en 2 dimensions");
    end
    s = size(villes,2);
    temp = zeros(2,s+1);
    temp(:,2:s+1)=villes;
    for i=1:s+1
        for j=1:s+1
            M(i,j) = norm(temp(:,i) - temp(:,j));
        end
    end
end