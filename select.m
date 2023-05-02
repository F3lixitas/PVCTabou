function [Tup,Pup]=select(deltaP,T,it,P)
% deltaP : tableau différence de distance parcourue totale entre deux
% itérations ordre passage
% T : tableau tabou : ville / ordre passage
% it : itération actuelle
% P : ordre des villes

% Tup : T updated
% Pup : P updated

% temp = T < ones(size(T))*it % 1 si inversion possible 0 sinon en tableau
% ville /ordre passage

% recherche indice min de deltaP
% choisi le premier min rencontré
% obtention ville à indice actuelle
% vérif si inversion choisi possible avec temp
end