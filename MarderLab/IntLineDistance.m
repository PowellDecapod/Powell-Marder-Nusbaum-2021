function [Min_Distance] = IntLineDistance(PyloricCP,GastricCP)
%UNTITLED3 Summary of this function goes here
%   Detailed explanation goes here
Y = zeros(35,1);
Min_Distance = zeros(length(PyloricCP),1);
m = (1:35);
i = 1;
j = 1;

while j <= length(PyloricCP)
    i = 1;
    while i <= 35
        Dist = (abs(m(i)*PyloricCP(j) - GastricCP(j)))/(sqrt(1+m(i)^2));
        Y(i,:) = Dist;
        i = i + 1;
    end
    ShortestDist = min(Y(:));
    Min_Distance(j,:) = ShortestDist;
    j = j + 1;
end
    
end

