function route = tournamentSelection(pop,n)
    newPop = {};
    for i=1:n
        j = randi([1 length(pop)]);
        newPop{i} = pop{j};
    end;
    route = get_best_route(newPop);
end

