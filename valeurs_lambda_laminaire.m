function y = valeurs_lambda_laminaire()
    Re1 = [750:50:2000];
    i = 1;
    while i < length(Re1) + 1
        y(i) = lambda_laminaire(Re1(i));
        i = i + 1;
    end 
end