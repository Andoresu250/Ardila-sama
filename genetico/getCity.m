function city = getCity( cities,id )
    city = [];
    for i=1:length(cities)
       if cities{i}(1) == id
           city = cities{i};
           break;
       end
    end

end

