function y = lambda_turbulant(e,Re)
    eps = 0.0001;
    a = 1 / sqrt(0.1);
    b = 1 / sqrt(0.008); % il faut verifier que f(a) * f(b) < 0
    x = (a + b)/2;
    while abs(colebrook_white(e,Re,x)) > eps
        if colebrook_white(e,Re,x) * colebrook_white(e,Re,a) < 0
            b = x;
        else
            a = x;
        end
        x = (a + b)/2;
    end
    y = 1/x^2;
end