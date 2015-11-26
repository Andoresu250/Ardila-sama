function newPop = evolvePopulation(pop)
    newPop = {};
    %%Agregar el mejor a la nueva poblacion
    newPop{1} = get_best_route(pop); 
    for i = 2:length(pop)
        %Selecionar padres
        parent1 = tournamentSelection(pop,5);
        parent2 = tournamentSelection(pop,5);
        %Cruzar padres y guardar el hijo
        newPop{i} = crossover( parent1, parent2);
    end;
    %Mutar
    for i = 2:length(newPop)
        newPop{i} = mutate(newPop{1},0.04);
    end
end

