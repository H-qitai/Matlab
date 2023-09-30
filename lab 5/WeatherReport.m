% WeatherPredictionDisplay.m is a script file that checks the weather
% information of the specific day/month/year. It will calls the
% WeatherPredictionModel function, which will predicts the weather using 
% "highly complicated" algorithms and information provided from satellite.
% 
% Author: Tony Huang
% Date: 21/08/22

% Clears and empty the workspace
clear, clc

% Calls the function of WeatherPredictionModel and enters a day/month/year
% and store each output as a variable.
[WeatherCondition, ...
Temperature, ...
RainfallProbability, ...
ExpectedRainfall, ...
Humidity, ...
Pressure, ...
WindSpeed] = WeatherPredictionModel(20, 6, 2003);

% Since the date are manually changed in the script, if using input the day
% and month displayed will change according to input.
day = 20;
months = 6;
year = 2003;

% Displays the heading of the report.
disp('                Weather info')
date = "                 %d/%d/%d";
config_date = sprintf(date, day, months, year);
disp(config_date)
disp('----------------------------------------------')

% Displays the weather condition of that specific day.
WC = "The weather condition on that day is: %8s"; % config using sprintf
info_WC = sprintf(WC, WeatherCondition); % to make it look better.
disp(info_WC)

% Display the temperature on that day.
T = "The temperature on that day is: %12.1f°C";
info_T = sprintf(T, round(Temperature,1));
disp(info_T)

% Display the rainfall probability on that day.
RFP = "The possibility of rain on that day is: %5.1f%%";
info_RFP = sprintf(RFP, RainfallProbability*100);
disp(info_RFP)

% Display the expected rainfall on that day.
ERF = "The expected rain fall on that day is: %4.1f mm";
info_ERF = sprintf(ERF, ExpectedRainfall*100);
disp(info_ERF)

% Display the hummidity on that day.
H = "The humidity on that day is: %16.1f%%";
info_H = sprintf(H, Humidity*100);
disp(info_H)

% Display the pressure on that day.
P = "The pressure on that day is: %13.0f hpa";
info_P = sprintf(P, Pressure);
disp(info_P)

% Display the wind speed on that day.
WS = "The wind speed on that day is: %10.1f ms-1";
info_WS = sprintf(WS, WindSpeed);
disp(info_WS)