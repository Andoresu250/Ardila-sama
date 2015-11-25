clear all;clc;
clear all; clc;
%Leer archivo
[ids, xs, ys] = textread('ciudades.txt','%d %f %f');
cities = length(ids);
locations = zeros(cities,2);
n = 1;
%Asignar puntos
while (n <= cities)
    locations(n,1) = xs(n);
    locations(n,2) = ys(n);
    n = n+1;
end
%Dibujar punos
plot(locations(:,1),locations(:,2),'bo');
times = textread('tiempos.txt');
cities = {};
for i=1:length(ids);
    cities{i} = [i xs(i) ys(i)];
end;
pop = init_pop(cities,50);
best = get_best_route(pop);
best_distance_init = calculate_distance_route(best);
best_distance_init = num2str(best_distance_init);
fprintf(['Mejor distancia inicial: ' best_distance_init '\n']);
disp('Mejor ruta inicial:');
show_route(best);