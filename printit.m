function printit(varargin)
% PRINTIT    Prints the current figure to an eps file on the desktop
%
%   PRINTIT(fig) prints figure number "fig"
%
%   Iyad Obeid
%   10/7/2015

if nargin >= 1
    fig = varargin{1};
else
    fig = gcf;
    fig = fig.Number;
end

eval(['print -f' num2str(fig) ' -depsc2 -opengl ~/Desktop/foo.eps']);
