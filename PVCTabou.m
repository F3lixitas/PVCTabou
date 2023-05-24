function [ordre_optimal]=PVCTabou(villes, nBIterations, plageTabou)
% villes 
% nBIterations : nombre maximal d'itérations
% plageTabou : plage de valeurs de verrouillage du tableau tabou (tableau à 2 valeurs)
    ordre=randperm(size(villes,2));
    ordre_optimal=ordre;
    distance_optimale=distance(ordre_optimal, villes);
    D=matrice_distance(villes);
    T=zeros(size(villes, 2), size(villes, 2));
    for i=1:nBIterations
        deltaP = calculDeltaP(ordre, D);
        [T,ordre] = select(deltaP, T, i, ordre, floor(randn * (plageTabou(2)-plageTabou(1)) + plageTabou(1)));
        dist = distance(ordre, villes);
        if(dist < distance_optimale)
            ordre_optimal = ordre;
            distance_optimale = dist;
        end
    end
end