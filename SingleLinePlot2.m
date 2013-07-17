function [  ] = SingleLinePlot2(  )
%SINGLELINEPLOT2 Summary of this function goes here
%   Detailed explanation goes here
%%
SetFont();
%%
% Script to plot -t log t function
f = @(t)-t.*log(t);
t = linspace(0,1.5,200);
y = f(t);
tau = linspace(0,1.5,7);
x = f(tau);

subplot(2,2,1)
plot(t,y,'k',tau,x,'ro'); grid on

xlabels = strvcat('0', ' ', '1');
ylabels = strvcat('0', ' ' );
set(gca,'XTick',[0 1/exp(1) 1],'XTickLabel',xlabels,...
     'YTick',[0 1/exp(1)],'YTickLabel',ylabels)
text('Interpreter','latex','String','$- \kern.8em t \log t$',...
   'Position',[1 1/exp(1)-.2 ])
text('Interpreter','latex','String','$\frac{\log e}{e}$',...
   'Position',[-.3 1/exp(1)])
text('Interpreter','latex','String','$1/e$',...
   'Position',[1/exp(1)-.09 -1.15])

PrintIeeeFig('SingleLinePlot2Result');

end

