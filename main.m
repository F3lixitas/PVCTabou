rand('state', 1975);
% Ce fichier sert à tester notre algorithme

villes = round(rand(2, 5)*20-10);

dist = [];
t = [];
it = 100000;

opti = [];
distOpti = -1;

rand('state', sum(100*clock));

for n = 1:100
    tic
    ordre=PVCTabou(villes, it, [30, 60]);
    t(n)=toc;

    dist(n) = distance(ordre, villes);
    if distOpti < 0
        distOpti = distance(ordre, villes);
        opti = ordre;
    elseif dist(n) < distOpti
        distOpti = distance(ordre, villes);
        opti = ordre;
    end
end

distOpti
opti

villes_ordonnees = zeros(size(villes,1), size(villes, 2)+2);
for k=1:size(opti,2)
    villes_ordonnees(:,k+1) = villes(:, opti(k));
end

figure;
plot(villes(1,:), villes(2,:), '+');
hold on
plot(villes_ordonnees(1, :), villes_ordonnees(2, :));
hold off