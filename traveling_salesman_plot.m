function state = traveling_salesman_plot(options,state,flag,locations)
    persistent x y xx yy
     if strcmpi(flag,'init')
     end
    axis([-0.1 1.5 -0.2 1.2]);
    [unused,i] = min(state.Score);
    genotype = state.Population{i};
    plot(locations(genotype,1),locations(genotype,2));
    hold on
    plot(locations(:,1),locations(:,2),'bo');
    hold off
end