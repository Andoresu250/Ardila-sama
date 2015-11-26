function sw = equalRoutes( route1 , route2 )
    sw = 1;
    for i=1:numel(route1)
       if route1{i}(1) ~= route2{i}(1)
           sw = 0;
           break;
       end
    end

end

