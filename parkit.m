function varargout = parkit(varargin)
% parkit
%   This function takes an undocked figure window and docks it.
%   Usage:
%       PARKIT    : docks the current figure window
%       PARKIT(n) : docks figure "n" (where n is an integer 1, 2, 3, etc)
%       PARKIT(0) : dock all figure windows
%
%   I. Obeid 4/30/2014

helpString = 'parkit \t\t docs the current figure window\n';

if nargin == 1
    if isstr('varargin{1}')
        if strcmp(varargin{1},'-h')
            varargout{1} = helpString;
            return
        end
    end
    h = varargin{1};
else
    h = gcf;
end
if h==0
    parkall
else
    set(h,'windowstyle','docked');
end

function parkall

hh = findobj('type','figure');
for i = 1:length(hh)
    h = hh(i);
    set(h,'windowstyle','docked');
end