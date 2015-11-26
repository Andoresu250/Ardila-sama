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
%Calcular matriz distancia
distances = zeros(cities);
for count1=1:cities,
    for count2=1:count1,
        x1 = locations(count1,1);
        y1 = locations(count1,2);
        x2 = locations(count2,1);
        y2 = locations(count2,2);
        distances(count1,count2)=sqrt((x1-x2)^2+(y1-y2)^2);
        distances(count2,count1)=distances(count1,count2);
    end;
end;
%Generar matriz tiempo (RANDOM) 

%%Univariable
times = textread('tiempos.txt');

%FitnessFcn = @(x) traveling_salesman_fitness(x,distances);
FitnessFcn = @(x) milti_traveling_salesman_fitness(x,distances,times);
my_plot = @(options,state,flag) traveling_salesman_plot(options, ...
    state,flag,locations);

options = gaoptimset('PopulationType', 'custom','PopInitRange', ...
    [1;cities]);
inicialScore(:,1) = zeros(60,1);
options = gaoptimset(options,'CreationFcn',@create_permutations, ...
    'CrossoverFcn',@crossover_permutation, ...
    'MutationFcn',@mutate_permutation, ...
    'PlotFcn', my_plot, ...
    'Generations',500,'PopulationSize',60, ...
    'PlotFcns',{@gaplotpareto}, ...
    'InitialScores',inicialScore, ...
    'StallGenLimit',200,'Vectorized','on');

numberOfVariables = cities;
lb = -1.5;
ub = 0;
gamultiobj(FitnessFcn,numberOfVariables,[],[],[],[],lb,ub,options);





