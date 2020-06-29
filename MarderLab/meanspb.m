function [meanspb, stdspb ] = meanspb( filename )
%returns mean spikes per burst of bursts listed in the input file and the standard
%deviation of the spikes per burst

filename= csvread(filename, 0, 1);
filename=flipud(filename);

spikesperburst=filename(:,8);
meanspb=mean(spikesperburst);
stdspb= std(spikesperburst);

end

