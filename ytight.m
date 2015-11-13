function varargout = ytight (varargin)
% YTIGHT
%   Resizes ylimit axes so that the plot fills the window

helpString = 'ytight \t\t resizes ylimit so that plot fills the window\n';

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
        if ~strcmp(get(hh,'type'),'text')
            yy = sort(get(hh,'ydata'));
            if yy(1) < mn
                mn = yy(1);
            end
            if yy(end) > mx
                mx = yy(end);
            end
        end
    end
    
    ylim([mn mx]);
end