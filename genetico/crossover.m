function child = crossover( parent1, parent2 )

    child = {};
    
    for i=1:length(parent1)
        child{i} = [-1 -1 -1];
    end
    
    startPos = randi([1 length(parent1)]);
    endPos = randi([1 length(parent1)]);
    
    for i=1:length(parent1)
       if startPos < endPos && i > startPos && i < endPos 
           child{i} = parent1{i};
       else
           if startPos > endPos
               if ~(i < startPos && i > endPos)
                   child{i} = parent1{i};
               end
           end
       end
    end
    
    for i=1:length(parent2)
        if containsCity(child, parent2{i})==0
            for ii=1:length(parent2)
                if child{ii}(1)==-1
                    child{ii} = parent2{i};
                    break;
                end
            end
        end
    end
end

