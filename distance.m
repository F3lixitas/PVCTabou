function [dist]=distance(ordre, villes)
% ordre : ordre des villes
% villes : coord x,y des villes
    if size(villes, 1) ~= 2
        error("Erreur dans la fonction distance : Les villes doivent avoir des positions en 2 dimensions");
    end
    s = size(villes,2);
    dist = eucDist(villes(1, ordre(1)), villes(2, ordre(1)));

    for k=2:s
        dist = dist + eucDist(villes(1, ordre(k)), villes(2, ordre(k)));
    end
    dist = dist + eucDist(villes(1, ordre(s)), villes(2, ordre(s)));
end