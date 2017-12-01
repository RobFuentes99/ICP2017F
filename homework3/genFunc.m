function output = genFunc(varargin)
    if(nargin>3)
        disp('You can only display 3 inputs!');
        return
    else
        switch nargin
            case 1
                if(isreal(varargin{1}))
                    a = varargin{1};
                    b = 0;
                    c = 0;
                else
                    disp('You must enter real numbers');
                end
            case 2
                if(isreal(varargin{1}) && isreal(varargin{2}))
                    a = varargin{1};
                    b = varargin{2};
                    c = 0;
                else
                    disp('You must enter real numbers')
                end
            case 3 
                if(isreal(varargin{1}) && isreal(varargin{2}) && isreal(varargin{3}))
                    a = varargin{1};
                    b = varargin{2};
                    c = varargin{3};
                else
                    disp('You must enter real numbers')
                end
        end
    end
    output = evaluateFunction(a,b,c);
end
function out = evaluateFunction(a,b,c)
out = @(x) a.*x^2+b.x+c;
end
