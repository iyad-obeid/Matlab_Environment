function varargout = sxt(varargin)

helpString = 'sxt(xt,xtl) \t sets xtick and xticklabels\n';

if nargin >= 1
    if strcmp(varargin{1},'-h')
        varargout{1} = helpString;
    else
        xtick(varargin{1})
    end
end

if nargin >= 2
    set(gca,'xticklabel',varargin{2});
end
