function [dist]=distance(ordre, villes)
    if size(villes, 2) ~= 2
        error("Erreur dans la fonction distance : Les villes doivent avoir des positions en 2 dimensions");
    end
    s = size(villes,1);
    dist = eucDist(villes(ordre(1), 1), villes(ordre(1), 2));

    for k=2:s
        dist = dist + eucDist(villes(ordre(k), 1), villes(ordre(k), 2));
    end
    dist = dist + eucDist(villes(ordre(s), 1), villes(ordre(s), 2));
end

function [res]=eucDist(a,b)
    res = sqrt(a^2+b^2);
end