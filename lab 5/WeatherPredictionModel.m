function [WeatherCondition, ...
            Temperature, ...
            RainfallProbability, ...
            ExpectedRainfall, ...
            Humidity, ...
            Pressure, ...
            WindSpeed] = WeatherPredictionModel(Day, Month, Year)
% WeatherPredictionModel
%
% Highly complicated weather prediction model that predicts and outputs
% several weather related parameters.
%
% Input:
%       Day: of the month, as an integer.
%       Month: of the year, as an integer.
%       Year: as an integer.
% Output:
%       WeatherCondition:Weather condition as a string (e.g. :rainy’,
%                                               ‘sunny’, ‘cloudy’, etc.).
%       Temperature: Temperature in °C.
%       RainfallProbability: Rainfall probability, as a number between 0 and 1.
%       ExpectedRainfall: Expected rainfall in m.
%       Humidity: Humidity as a number between 0 and 1.
%       Pressure: Pressure in Pa.
%       WindSpeed: Average wind speed in m s−1.
%
% Author: MZ 2022

rng(Year);

WeatherConditionList = {'Sunny', 'Cloudy', 'Windy', 'Rainy', 'Snowy', ...
                        'Stormy', 'Foggy', 'Tornadoey', 'Sandstormy', ...
                        'Blizzardy', 'Droughty'};
WeatherCondition = WeatherConditionList{randi(length(WeatherConditionList),1)};
Temperature = Month * randn(1,1) + Day;
RainfallProbability = rand(1)^2;
ExpectedRainfall = .069 * rand(1,1);
Humidity = rand(1);
Pressure = (Day + Month)^2 * randn(1,1) + 101325;
WindSpeed = 10 * sqrt(rand(1));

end