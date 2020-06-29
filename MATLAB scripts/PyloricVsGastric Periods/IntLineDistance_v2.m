function [Min_Distance] = IntLineDistance_v2(PyloricCP,GastricCP)
%Takes a series of paired pyloric cycle periods (means) and gastric mill  
%cycle periods and computes the shortest distance between a pair of cycle
%periods and a predetermined set of integer slope lines (m)
Y = zeros(35,1);
Min_Distance = zeros(length(PyloricCP),1);
m = (1:35); %integer slopes
j = 1;

while j <= length(PyloricCP)
    i = 1;
    while i <= 35
        Dist = ((m(i)*PyloricCP(j) - GastricCP(j)))/(sqrt(1+m(i)^2));
        Y(i,:) = Dist;
        i = i + 1;
    end
    ShortestDist = min(Y(:));
    Min_Distance(j,:) = ShortestDist;
    j = j + 1;
end
    
end