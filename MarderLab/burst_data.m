function [filedata] = burst_data (filename)

filedata = struct();

function [meanfreq,stdfreq,semfreq] = burst_data (filename)

filename = csvread (filename,0,1);
filename = flipud (filename);

frequency = filename (:,6);
meanfreq = mean(frequency);
stdfreq = std(frequency);
semfreq = stdfreq/(sqrt(length(:,6)));
end




filedata.burst_start = (:,6);
end