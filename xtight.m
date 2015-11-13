function varargout = xtight(varargin)
% XTIGHT
%   Resizes xlimit axes so that the plot fills the window

helpString = 'xtight \t\t resizes xlimit so that plot fills the window\n';

if nargin==1
    if strcmp(varargin{1},'-h')
        varargout{1} = helpString;
    end
else
    
    h = get(gca,'children');
    
    mn = inf;
    mx = -inf;
    
    for i = 1:length(h)
        hh = h(i);
        xx = get(hh,'xdata');
        if xx(1) < mn
            mn = xx(1);
        end
        if xx(end) > mx
            mx = xx(end);
        end
    end
    
    xlim([mn mx]);
end