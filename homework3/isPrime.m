function [ Status ] = isPrime(varargin)
switch nargin
    case 1
        isPrime(varargin{1},2)
    case 2
        if varargin{1}==2||mod(varargin{1},varargin{2})~=0&&varargin{1}- 1
            if varargin{2} < sqrt(varargin{1})
                isPrime(varargin{1},varargin{2}+1)
            else 
                Status=true;
            end
        else
            Status=false;
        end
end
end
