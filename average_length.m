function [ minutes, seconds ] = average_length( song_number, total_time )
% Lab 01-22 question 2(c)
average_days = total_time/song_number;
average_seconds = average_days*24*60*60;
minutes = floor(average_seconds/60);
seconds = mod(average_seconds, 60);

end

