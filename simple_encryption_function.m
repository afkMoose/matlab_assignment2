% Author Name: Matthew Silva
% Email: silvam76@rowan.edu
% Course: MATLAB Programming - Fall 2024
% Assignment: Assignment 2
% Task: 2 - Simple Encryption Function
% Date: 10/11

%2 - Simple Encryption Function

message = input('Enter a message (lowercase letters only): ', 's');% Prompt the user for input

shift = input('Enter a shift value (1-25): ');
charString = char(message - shift);

disp(['encrypted_message:', charString]);

shift_back = char(charString+shift);
disp(['Unencrypted_message:', shift_back]);