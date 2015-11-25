function pop = init_pop(citys,size_pop)
    pop = {};
    for i=1:size_pop;
        %%Crear camino aleatorio
        pop{i} = citys(randperm(length(citys)));
    end;
end

