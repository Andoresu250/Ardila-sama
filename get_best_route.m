function minRoute = get_best_route(pop)   
    minRoute = pop{1};
    for i=2:length(pop)
        a = calculate_distance_route(pop{i}); 
        b = calculate_distance_route(minRoute);
        if a < b
            minRoute = pop{i};
        end
    end;
end

