function z = cplx(varargin)
% x = CPLX(m,p): enter a complex number in polar form
%
%   x = CPLX(3,pi/5);
%
%   Allows you to enter a complex number in polar form. The first arguement
%   is the magnitude. The second argument is the phase in radians. An
%   optional flag allows you to enter the phase angle in degrees:
%
%    x = CPLX(3,25,'deg');
%
%   I. Obeid
%   4/17/2014

helpString = 'cplx(m,p) \t creates complex number m<p \n';

if nargin <2
    error('two inputs required: cplx(m,p)');
end

if length(varargin{1})>1 && length(varargin{2})>1
    if length(varargin{1}) ~= length(varargin{2})
        error('m and p must be same length');
    end
end


m = varargin{1};
p = varargin{2};

if nargin >= 3
    if strcmp(varargin{3},'deg')
        p = p*pi/180;
    else
        error('third input argument not recognized');
    end
end

if ischar(m)
    if strcmp(m,'-h')
        z = helpString;
        return;
    end
end
z = m.*exp(1j*p);
