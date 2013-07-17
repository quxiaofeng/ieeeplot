function [  ] = PrintIeeeFig( nameWithoutExtention )
%SAVEIEEEEPS Summary of this function goes here
%   Detailed explanation goes here

print('-depsc2','-r600',[nameWithoutExtention,'.eps'])
end

