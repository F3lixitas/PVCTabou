function [dist]=distance(ordre, villes)
% ordre : ordre des villes
% villes : coord x,y des villes
    if size(villes, 1) ~= 2
        error("Erreur dans la fonction distance : Les villes doivent avoir des positions en 2 dimensions");
    end
    s = size(villes,2);
    temp = zeros(2,s+1);
    temp(:,2:s+1)=villes;
    dist = norm(temp(:, ordre(1)+1) - temp(:,1));
    for k=2:s
        dist = dist + norm(temp(:, ordre(k)+1) - temp(:, ordre(k-1)+1));
    end
    dist = dist + norm(temp(:, ordre(s)+1));
end