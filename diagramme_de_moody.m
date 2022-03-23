e = [0.0001,0.0002,0.0004,0.0006,0.0008,0.001,0.002,0.004,0.006,0.008,0.01,0.015,0.02,0.03,0.04,0.05];
Re1 = [750:50:2000];
Re2 = [2*10^3:10^3:9*10^3];
Re3 = [10^4:10^4:9*10^4];
Re4 = [10^5:10^5:9*10^5];
Re5 = [10^6:10^6:9*10^6];
Re6 = [10^7:10^7:9*10^7];
Re7 = [10^8:10^8:9*10^8];
Re = [Re2,Re3,Re4,Re5,Re6,Re7];
semilogx(Re1,valeurs_lambda_laminaire(),'r');
hold on;
i = 1;
    while i < length(e) + 1
        semilogx(Re,valeurs_lambda_turbulant(e(i)),'r');
        temp = valeurs_lambda_turbulant(e(i));
        text(10^9,temp(length(temp)),num2str(e(i)));
        hold on;
        i = i + 1;
    end 
semilogx(Re,valeurs_lambda_epsilon_nulle(),'r');
temp = valeurs_lambda_epsilon_nulle();
text(10^9,temp(length(temp)),num2str(0));
hold on;
grid on;
hold off;
title('Diagramme de Moody');
xlabel('Reynolds');
ylabel('Lambda');
