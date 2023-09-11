function [oldestName, oldestAge, youngestName, youngestAge] = EdgeAges(name,age)
    
    [oldestAge,namePositionOldest] = max(age); 
    [youngestAge,namePositionYougest] = min(age);
    
    oldestName = name(namePositionOldest);
    youngestName = name(namePositionYougest);
    
end
