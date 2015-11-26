function route = mutate(route,mutationRate)

    for i=1:length(route)
        if rand < mutationRate
            j = randi([1 length(route)]);
            
            city1 = route{i};
            city2 = route{j};
            
            route{i} = city2;
            route{j} = city1;
        end
    end

end

