function varargout = fig (varargin)
% FIG(i) creates figure "i", clears it, and docks it
%   "i" must be an integer greater than 1 or there will be an error
%   
%   h = FIG(i) returns the figure handle
%   h = FIG creates the 'next' figure, clears and docks it
%
%   Iyad Obeid, 22 April 2015
%   Revised 5 October 2015
%   Revised 7 October 2015

if nargin >= 1
    i = varargin{1};
else
    if isempty(get(0,'children'))
        i = 1;
    else
        i = 1 + get(gcf,'Number');
    end
    
end

h = figure(i);
clf;
parkit;

if nargout >= 1
    varargout{1} = h;
end

