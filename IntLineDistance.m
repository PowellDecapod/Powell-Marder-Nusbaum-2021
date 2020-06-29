function [Min_Distance] = IntLineDistance(PyloricCP,GastricCP)
%Takes a series of paired pyloric cycle periods (means) and gastric mill  
%cycle periods and computes the shortest distance between a pair of cycle
%periods and a predetermined set of integer slope lines (m)
Distances = zeros(35,1);
Min_Distance = zeros(length(PyloricCP),1);
m = (1:35); %integer slopes
X = [0,1,2];
Y = zeros(1,3);
j = 1;

while j <= length(PyloricCP)
    i = 1;
    while i <= 35
        Y(i) = m(i).*X;
        inv_m = -(1/m(i));
        b = GastricCP(j) - inv_m*PyloricCP(j);
        x = b/(m(i) - inv_m);
        y = 10*x;
        d = sqrt((y - GastricCP(j))^2 + (x - PyloricCP(j))^2);
        Distances(i,:) = d;
        i = i + 1;
    end
    ShortestDist = min(Distances(:));
    Min_Distance(j,:) = ShortestDist;
    j = j + 1;
end
    
end

