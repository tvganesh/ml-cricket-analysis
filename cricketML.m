%% This code provides an outline for performing Multivariate Regression to predict 
%% performance of cricketers
%%
%% Developed by Tinniam V Ganesh                    
%% 12 Dec 2014

%% Clear and Close Figures
clear ; close all; clc

fprintf('Loading data ...\n');

%% Load Data
data = load('srt.csv'); %Load Sachin Tendulkar's data
X = data(:, 1:2);  % X(:,1) =  Minutes at crease X(:,2) = Balls faced
y = data(:, 3);    % Runs scored
m = length(y)
figure;
scatter3(X(:,1),X(:,2),y,[],[240 15 15],'x');
maxminutes = max(X(:,1));
maxballsfaced = max(X(:,2));

% Compute cost

% Perform gradient descent

% Store the theta value

% Create a mesh grid for minutes at crease and balls faced
hold on;
x = linspace(0,maxminutes + 20,10);
y = linspace(1,maxballsfaced+ 20,10);
[XX, YY ] = meshgrid(x,y);


% Calculate the prediction plane
[a b] = size(XX)

for i=1:a,

   for j= 1:b,
      % Compute Normalized ZZ from XX,YY
   end;
end;

% Display the prediction plane as a mesh
mesh(XX,YY,ZZ);

xlabel('Minutes at crease');
ylabel('Balls faced');
zlabel('Runs scored');
title('Sachin Tendulkar performance');
print -dpng 'srt.png';
hold off;

% Plot the convergence graph
print -dpng 'convergence-srt.png';


% Calculate predicted runs for different minutes at crease and balls faced
i=j=1;
runs=minutes=bf=zeros(13,13);

for m = 10:25:310, %Minutes played
   for n = 10:25:310,  %Balls faced
     
      % Compute runs for Minutes played and Balls faced.
	  
	  j = j+1;
   end;
   j=1;
   i = i+1;
end;
runs
save srt.txt runs -ascii % save as txt file










