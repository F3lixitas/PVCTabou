function [ordre]=PVCTabou(villes, nBIterations)
    ordre=randperm(size(villes,2));
    D=matrice_distance(villes);
    T=zeros(size(villes, 2), size(villes, 2));
    for i=1:nBIterations
        deltaP = calculDeltaP(ordre, D);
        [T,ordre] = select(deltaP, T, i, ordre, floor(randn * 5 + 5));
    end
end