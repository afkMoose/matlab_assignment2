% Author Name: Matthew Silva
% Email: silvam76@rowan.edu
% Course: MATLAB Programming - Fall 2024
% Assignment: Assignment 2
% Task: 5 - Stock Market Analysis
% Date: 10/11

% Part 1: Reading the stock data
fileID = fopen('stock_data.txt', 'r');
stock_prices = fscanf(fileID, '%f');
fclose(fileID);

% Part 2: Calculating statistics
avg_price = mean(stock_prices);  % Average closing price
max_price = max(stock_prices);   % Highest closing price
min_price = min(stock_prices);   % Lowest closing price

% Number of days the price increased from the previous day
price_diff = diff(stock_prices); % Day-to-day difference
num_increase_days = sum(price_diff > 0);

% Displaying the results
fprintf('Average Closing Price: %.2f\n', avg_price);
fprintf('Highest Closing Price: %.2f\n', max_price);
fprintf('Lowest Closing Price: %.2f\n', min_price);
fprintf('Number of days the stock price increased: %d\n', num_increase_days);

% Part 3: Plotting the data
days = 1:length(stock_prices);

figure;
plot(days, stock_prices, '-o', 'LineWidth', 2); % Daily closing prices

hold on;
yline(avg_price, '--r', 'LineWidth', 2, 'Label', 'Average Price');  % Average price line
yline(max_price, '--g', 'LineWidth', 2, 'Label', 'Highest Price');  % Highest price line
yline(min_price, '--b', 'LineWidth', 2, 'Label', 'Lowest Price');   % Lowest price line
hold off;

% Adding labels and title
xlabel('Day');
ylabel('Stock Price');
title('Stock Price Analysis');
legend('Daily Prices', 'Average Price', 'Highest Price', 'Lowest Price', 'Location', 'best');

% Save plot as an image
saveas(gcf, 'stock_analysis.png');

% Part 4: Writing the summary to a text file
fileID = fopen('stock_summary.txt', 'w');
fprintf(fileID, 'Stock Price Analysis Summary\n');
fprintf(fileID, '----------------------------\n');
fprintf(fileID, 'Average Closing Price: %.2f\n', avg_price);
fprintf(fileID, 'Highest Closing Price: %.2f\n', max_price);
fprintf(fileID, 'Lowest Closing Price: %.2f\n', min_price);
fprintf(fileID, 'Number of days the stock price increased: %d\n', num_increase_days);
fclose(fileID);