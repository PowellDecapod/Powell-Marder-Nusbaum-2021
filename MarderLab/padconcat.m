function [catmat]=padconcat(a,b,c)
%[catmat]=padconcat(a,b,c)
%concatenates arrays with different sizes and pads with NaN.
%a and b are two arrays (one or two-dimensional) to be concatenated, c must be 1 for
%vertical concatenation ([a;b]) and 2 for horizontal concatenation ([a b])
sa=size(a);
sb=size(b);

switch c
    case 1
        tempmat=NaN(sa(1)+sb(1),max([sa(2) sb(2)]));
        tempmat(1:sa(1),1:sa(2))=a;
        tempmat(sa(1)+1:end,1:sb(2))=b;
        
    case 2
        tempmat=NaN(max([sa(1) sb(1)]),sa(2)+sb(2));
        tempmat(1:sa(1),1:sa(2))=a;
        tempmat(1:sb(1),sa(2)+1:end)=b;
end

catmat=tempmat;
end
