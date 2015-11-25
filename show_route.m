function a = show_route(route)
    a=0;
    myRoute = [];
    for i=1:length(route)
        myRoute(i) = route{i}(1);
    end
    disp(myRoute);
end

