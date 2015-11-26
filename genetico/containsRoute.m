function sw = containsRoute( routes,route )    
    sw = 0;
    n = numel(routes);
    for i=1:n
        for j=1:n
            if routes{i}{j}(1) == route{j}(1)
                sw = 1;
                break;
            end
        end
    end
end

