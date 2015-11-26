function sw = containsCity(cities, city)
    sw = 0;
    for i=1:length(cities)
       if cities{i}(1) == city(1)
           sw = 1;
           break;
       end
    end
end

