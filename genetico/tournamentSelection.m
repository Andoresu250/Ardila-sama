function route = tournamentSelection(pop,n)
    newPop = {};
    %disp('--------------------------------------------------------------------------------');
    for i=1:n
        r = randi([1 length(pop)])*randi([1 length(pop)])-randi([1 length(pop)])+randi([1 length(pop)]);
        j = mod(r,length(pop)) + 1;
        newPop{i} = pop{j};
        %show_route(pop{j});
    end;
    %disp('--------------------------------------------------------------------------------');
    route = get_best_route(newPop);
end

