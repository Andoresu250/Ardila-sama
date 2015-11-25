function dis = calcule_distance(city1,city2)
    dis = 0;
    x1 = city1(2);
    x2 = city2(2);
    y1 = city1(3);
    y2 = city2(3);
    dis = sqrt((x2-x1)^2 + (y2-y1)^2);
end

