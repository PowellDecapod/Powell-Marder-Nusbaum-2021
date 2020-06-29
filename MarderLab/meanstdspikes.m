function [meanspike, stdspike, spikes ] = meanstdspikes( filename )
%returns mean frequency of bursts listed in the input file and the standard
%deviation of the burst frequencies


filename= csvread(filename, 0, 1);
filename=flipud(filename);

spikes=filename(:,8);
meanspike=mean(spikes);
stdspike= std(spikes);

end
