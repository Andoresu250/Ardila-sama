clear all; clc;
[ids, xs, ys] = textread('ciudades.txt','%d %f %f');
cities = length(ids);
locations = zeros(cities,2);
n = 1;
while (n <= cities)
    xp = xs(n);
    yp = ys(n);
    %if inpolygon(xp,yp,xx,yy)
    locations(n,1) = xp;
    locations(n,2) = yp;
    n = n+1;
    %end
end
plot(locations(:,1),locations(:,2),'bo');


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

type create_permutations.m;
type crossover_permutation.m;
type mutate_permutation.m;
type traveling_salesman_fitness.m;
FitnessFcn = @(x) traveling_salesman_fitness(x,distances);
type traveling_salesman_plot.m;

my_plot = @(options,state,flag) traveling_salesman_plot(options, ...
    state,flag,locations);

options = gaoptimset('PopulationType', 'custom','PopInitRange', ...
    [1;cities]);

options = gaoptimset(options,'CreationFcn',@create_permutations, ...
    'CrossoverFcn',@crossover_permutation, ...
    'MutationFcn',@mutate_permutation, ...
    'PlotFcn', my_plot, ...
    'Generations',500,'PopulationSize',60, ...
    'StallGenLimit',200,'Vectorized','on');

numberOfVariables = cities;
[x,fval,reason,output] = ...
    ga(FitnessFcn,numberOfVariables,[],[],[],[],[],[],[],options);

displayEndOfDemoMessage(mfilename);