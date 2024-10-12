
% Author Name: Matthew Silva
% Email: silvam76@rowan.edu
% Course: MATLAB Programming - Fall 2024
% Assignment: Assignment 2
% Task: 3 - Weather Analysis
% Date: 10/11

%3 - Weather Analysis

data = readcell('weather_data.txt', 'Delimiter', ','); % Read data from the file


temperature = cell2mat(data(2:end, 2)); % Extract numerical data (skipping the header row)
humidity = cell2mat(data(2:end, 3));
precipitation = cell2mat(data(2:end, 4));


average_temperature = mean(temperature);% Calculate average temperature, humidity, and total precipitation
average_humidity = mean(humidity);
total_precipitation = sum(precipitation);


summary_data = {% Create a summary cell array
    'Average Temperature', average_temperature;
    'Average Humidity', average_humidity;
    'Total Precipitation', total_precipitation
};


writetable(cell2table(summary_data), 'weather_summary.txt', 'WriteVariableNames', false);% Write the summary to a new file


disp('Weather Summary:');% Display the results in the command window
disp(summary_data);