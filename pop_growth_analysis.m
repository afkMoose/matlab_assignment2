
% Author Name: Matthew Silva
% Email: silvam76@rowan.edu
% Course: MATLAB Programming - Fall 2024
% Assignment: Assignment 2
% Task: 1 - Population Growth Analysis
% Date: 10/11


%1 - Population Growth Analysis

population = [5000, 5200, 5350, 5600, 5800];% Create a row vector 'population' with the given data


growth_rate = (population(2:end) - population(1:end-1)) ./ population(1:end-1);%Calculate the year-over-year growth rate


pop_data = [population; [0 growth_rate]];%Create a 2x5 matrix 'pop_data' with population and growth rate


fprintf('Year\tPopulation\tGrowth Rate\n');%Use 'fprintf' to print a formatted table
for i = 1:length(population)
    fprintf('%d\t%d\t%.2f%%\n', i, population(i), pop_data(2,i) * 100); % multiply by 100 to show percentage
end



