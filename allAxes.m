function h = allAxes

% h = allAxes
%   returns a handle array h to all the axes in the current figure

h = findobj(gcf,'type','axes');
