function y = lambda_calculer_fonction(k,d,v,Q)
    Re = Q /(pi * d / 4 * v);
    if Re < 2000
        y = lambda_laminaire(Re);
    else 
        if k == 0
            y = lambda_epsilon_nulle(Re);
        else
            y = lambda_turbulant(k/d,Re);
        end    
    end    
end