function z3 = zpar(varargin)
% parallel impedance. needs some 'special case' love

inputString = 'incorrect inputs';
helpString = 'zpar(z1,z2) \t computes parallel impedance\n';

if (nargin==1)
    if strcmp(varargin{1},'-h')
        z3 = helpString;
    else
        error(inputString);
    end
    
elseif (nargin==2)
    z1 = varargin{1};
    z2 = varargin{2};
    z3 = z1.*z2 ./ (z1+z2);
else
    error(inputString);
end
