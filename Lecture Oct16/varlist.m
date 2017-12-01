function varlist(year,varargin)
   fprintf('Number of arguments: %d\n',nargin)
   celldisp(varargin)
   fprintf('The year is %d\n',year)
   fprintf('type of varargin is %s\n',class(varargin))
end