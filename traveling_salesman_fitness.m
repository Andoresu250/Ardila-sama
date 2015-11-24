function scores = traveling_salesman_fitness(x,distances,times)
    [n, m] = size(x);
    scores = zeros(m,2); 
    scores
    for j = 1:size(x,1)
        x
        p = x{j}; 
        f = distances(p(end),p(1));
        t = times(p(end),p(1));
        for i = 2:length(p)
            f = f + distances(p(i-1),p(i));
            t = t + times(p(i-1),p(i));
        end
        scores(j,1) = f;
        scores(j,2) = t;
    end
end