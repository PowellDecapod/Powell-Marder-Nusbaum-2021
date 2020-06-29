function [NumPyloricCycles] = NumPyloricCycles(intcounts_matrix)
%UNTITLED Summary of this function goes here
%   Detailed explanation goes here
i = 1;
NumPyloricCycles = zeros(100,1);
while i <= 100
    counts = sum(intcounts_matrix(:,1) == i);
    NumPyloricCycles(i,:) = counts;
    i = i + 1;
end
end

