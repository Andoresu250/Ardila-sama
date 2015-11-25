function dis = calculate_distance_route(route)
    dis = 0;
    for i=1:length(route)-1
        dis = dis + calcule_distance(route{1},route{i+1});
    end;    
end

