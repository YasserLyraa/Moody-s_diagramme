clc;
k = input('Entrer la valeur de k (en milimetre): ');
d = input('Entrer la valeur de d (en centimetre): ');
v = input('Entrer la valeur de v (en metre^2 par seconde): ');
Q = input('Entrer la valeur de Q (en metre^3 par seconde): ');
lambda_val = lambda_calculer_fonction(k,d,v,Q);
fprintf('la valeur de lambda est %f\n',lambda_val);