function [ TRANS ] = Transform( name )

tempvar = csvread(name,0,1);
TRANS = flipud(tempvar);
TRANS(:,3:4)=TRANS(:,3:4)/3600;


end

