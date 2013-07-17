function [ ] = SingleLinePlot( )
%SINGLELINEPLOT Summary of this function goes here
%   Detailed explanation goes here
%%
SetFont();
%%
t = linspace(0,1,200);   % Create data to plot
y = sin(2*pi*t);
tau = linspace(0,1,10);
x = sin(2*pi*tau);

% subplot(2,2,1)
plot(t,y,tau,x,'ro')

grid on;   % optional

% Optionally add some text, a label, and a title
text(0.6,0.5,'sin(2\pi\itt\rm)')
xlabel('\itt')
title('Plotting a Function with MatLab')

PrintIeeeFig('SingleLinePlotResult');


end

