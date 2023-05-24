rand('state', sum(100*clock));
% Entrée de test

villes = [ 1, 2, 1, 6, 7, 2, 4, 9, 3, 8, 1, 4,6 , 3, 7, 4, -1, 3, 7, -6, 5, -5, 1, 2, 9, 6, -4, -2, 4, 7;
           1, 1, 2, 0, 4, 5, 3, 2, 7, 7, 5, 1, 9, 4, 3, 5, 7, -2, 8, 3, -7, -3, -1, 4, 8, 1, 3, -8, 6, 1];

%find(villes(1,:) == 2)

%villes = rand(2, 30).*10;

dist = [];
t = [];
it = 1000000;

opti = [];
distOpti = -1;

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

opti

mean_d=mean(dist)
std_d=std(dist)
min_d=min(dist)
max_d=max(dist)

mean_t=mean(t*1000)
std_t=std(t*1000)
min_t=min(t*1000)
max_t=max(t*1000)

villes_ordonnees = zeros(size(villes,1), size(villes, 2)+2);
for k=1:size(opti,2)
    villes_ordonnees(:,k+1) = villes(:, opti(k));
end

figure;
plot(villes(1,:), villes(2,:), '+');
hold on
plot(villes_ordonnees(1, :), villes_ordonnees(2, :));
hold off