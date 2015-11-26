function pop = init_pop(citys,size_pop)
    pop = {};
    pop{1} = citys;
    for i=2:size_pop;
        temp = pop{i-1}(randperm(length(citys)));        
        pop{i} = temp;
    end;    
end

