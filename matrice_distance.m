function [M]=matrice_distance(villes)
    if size(villes,2) ~= 2
        error("Erreur dans la fonction distance : Les villes doivent avoir des positions en 2 dimensions");
    end
    s = size(villes,1);
    temp = zeros(s+1,2);
    temp(2:s+1,:)=villes;
    for i=1:s+1
        for j=1:s+1
            M(i,j) = norm(temp(i,:) - temp(j,:));
        end
    end
end