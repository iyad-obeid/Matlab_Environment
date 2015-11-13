function varargout = parkall(varargin)

helpString = 'parkall \t docs all figure windows\n';

if nargin==1
    if isstr(varargin{1})
        if strcmp(varargin{1},'-h')
            varargout{1} = helpString;
            return
        end
    end
end

parkit(0)