function [meanfreq,stdfreq ] = meanstdfreq( filename )
%returns mean frequency of bursts listed in the input file and the standard
%deviation of the burst frequencies


filename= csvread(filename, 0, 1);

frequencies=filename(:,6);
meanfreq=mean(frequencies);
stdfreq=std(frequencies);


end

