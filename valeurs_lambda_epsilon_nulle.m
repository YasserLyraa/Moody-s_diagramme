function y = valeurs_lambda_epsilon_nulle()
    Re2 = [2*10^3:10^3:9*10^3];
    Re3 = [10^4:10^4:9*10^4];
    Re4 = [10^5:10^5:9*10^5];
    Re5 = [10^6:10^6:9*10^6];
    Re6 = [10^7:10^7:9*10^7];
    Re7 = [10^8:10^8:9*10^8];
    Re = [Re2,Re3,Re4,Re5,Re6,Re7];
    i = 1;
    while i < length(Re) + 1
        y(i) = lambda_epsilon_nulle(Re(i));
        i = i + 1;
    end 
end