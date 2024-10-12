% Author Name: Matthew Silva
% Email: silvam76@rowan.edu
% Course: MATLAB Programming - Fall 2024
% Assignment: Assignment 2
% Task: 4 - Solar System Visualization
% Date: 10/11

% Solar System Visualization

% Data for planets (distances in AU and sizes relative to Earth)
planet_names = {'Mercury', 'Venus', 'Earth', 'Mars', 'Jupiter', 'Saturn', 'Uranus', 'Neptune'};
planet_distances = [0.39, 0.72, 1.00, 1.52, 5.20, 9.58, 19.18, 30.07]; % Distances from the Sun in AU
planet_sizes = [0.38, 0.95, 1.00, 0.53, 11.21, 9.45, 4.01, 3.88]; % Relative sizes (Earth = 1)
planet_colors = lines(length(planet_names)); % colors for each planet

% Create figure
figure;

% Subplot 1: Scatter plot of planet distances vs. sizes
subplot(1, 2, 1); % Create subplot
hold on;
for i = 1:length(planet_names)
    scatter(planet_distances(i), planet_sizes(i), 100*planet_sizes(i), 'filled', 'MarkerFaceColor', planet_colors(i,:));
end
hold off;

% Customizing the plot
title('Planet Distances vs. Sizes');
xlabel('Size relative to Earth');
ylabel('Distance from the Sun (AU)');
grid on;

% Adding planet names next to each point
for i = 1:length(planet_names)
    text(planet_distances(i), planet_sizes(i), planet_names{i}, 'VerticalAlignment', 'bottom', 'HorizontalAlignment', 'right');
end

legend(planet_names, 'Location', 'northeastoutside'); % Legend for planet names

% Subplot 2: Bar chart of planet distances
subplot(1, 2, 2); % Create second subplot
bar(planet_distances); % Bar chart for distances
set(gca, 'XTickLabel', planet_names); % Label bars with planet names

% Customizing the plot
title('Planet Distances from the Sun');
xlabel('Planets');
ylabel('Distance from the Sun (AU)');
grid on;

% Save the figure as an image file
saveas(gcf, 'solar_system_visualization.png');