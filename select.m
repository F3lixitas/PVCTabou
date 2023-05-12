function [Tup,Pup]=select(deltaP,T,it,P,it_rand)
% deltaP : tableau différence de distance parcourue totale entre deux
% itérations ordre passage
% T : tableau tabou : x : pos ; y :ville
% it : itération actuelle
% P : ordre des villes

% Tup : T updated
% Pup : P updated

rand('state',sum(100*clock));

temp = T < ones(size(T))*it; % 1 si inversion possible 0 si tabou

min_possible=0;

while compt<(size(deltaP,1)^2)&&(min_possible==0)
    
    [xmin,pos_ymin]=min(deltaP,[],1)
    [~,pos_ymin2]=min(xmin,[],2)
    pos_min=[pos_ymin2,pos_ymin(pos_ymin2)] % villes au min de delta
    
    i=pos_min(1); % ville
    j=pos_min(2); % ville
    
    k=find(P==i); %pos ordre passage ville
    l=find(P==j); %pos ordre passage ville
    
    if (temp(k,j)==0)|(temp(l,i)==0)
        deltaP(i,j)=+inf;
        deltaP(j,i)=+inf;
        % recherche nouveau min
        min_possible=0;
    else
        min_possible=1;
    end


end

Tup=T;
Tup(k,i)= it_rand+it;
Tup(l,j)=it_rand+it;

Pup=P;
Pup(k)=j;
Pup(l)=i;


end