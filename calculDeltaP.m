function [deltaP]=calculDeltaP(ordre, D)
    s=size(ordre);
    deltaP = zeros(s);
    deltaP(ordre(1),s) =  D(ordre(s), ordre(2)) ...
                            - D(ordre(1), ordre(2)) ...
                            + D(ordre(s-1), ordre(1)) ...
                            - D(ordre(s-1), ordre(s));
    deltaP(s,ordre(1)) = deltaP(ordre(1),s);
    for k = 2:s-1
        deltaP(ordre(1),k) =  D(ordre(k), ordre(2)) ...
                            - D(ordre(1), ordre(2)) ...
                            + D(ordre(k-1), ordre(1)) + D(ordre(k+1), ordre(1)) ...
                            - (D(ordre(k-1), ordre(k)) + D(ordre(k+1), ordre(k)));
        deltaP(k,ordre(1)) = deltaP(ordre(1),k);
    end

    for k = 3:s-1
        for l = k+1:s
            
        end
    end
end