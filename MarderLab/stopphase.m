function [stops] = stopphase( filename )
%returns mean start/stop phase of bursts listed in the input file and the standard
%deviation of the start/stop phase

filename= csvread(filename, 0, 1);
filename=flipud(filename);

stops=filename(:,4);


end

