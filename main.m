rand('state', sum(100*clock));
% Entrée de test

villes = [ 1, 2, 1;
           1, 1, 2];

%find(villes(1,:) == 2)

ordre=PVCTabou(villes, 1000)
villes_ordonnees = zeros(size(villes,1), size(villes, 2)+2);
for k=1:size(ordre,2)
    villes_ordonnees(:,k+1) = villes(:, ordre(k));
end

distance(ordre, villes)

figure;
plot(villes(1,:), villes(2,:), '+');
hold on
plot(villes_ordonnees(1, :), villes_ordonnees(2, :));
hold off