function [starts] = startphase( filename )
%returns mean start/stop phase of bursts listed in the input file and the standard
%deviation of the start/stop phase

filename= csvread(filename, 0, 1);
filename=flipud(filename);

starts=filename(:,3);


end

