1a = 2; % the 1 is invalid Matlab syntax, removed.  
a1 = b;  
x = 2;  
y = X + 4; % is it 6?  
pi = 4 * atan(1); % semicolon was improper syntax, removed.  
disp(pi)
pi = '3.14159'; % needed to be an apostrophe, not a quotation mark, in the beginning.  
disp(tan(pi));  
c = 4^3^2^3;  
d = ((c-78564)/c + 32); % value had no variable assigned to it, assigned it to d. Also, extra parenthesis deleted.  
year = 2017;  
disp(['The year is ' year]); % does it display 2017 correctly?  
stuff = {'a' 'b' '4' '21' 'c'}; % added apostrophes around 4 & 21.  
beginning = stuff(0);  
stop = stuff(5); % word 'end' acts as a Matlab function, changed to 'stop' to prevent error.  
discount = 12; % percent sign acts as a function, had to remove and add semicolon.    
AMOUNT = 120.; % removed minus sign, as it messed with syntax.  
amount = 120; % Matlab thought dollar sign acted as function, deleted accordingly.  
and = duck;
class = 'INF1100, gr 2'; % replaced quotation mark with apostrophe.  
continue_ = x > 0;
fox = false; % deleted one of the equal signs.  
wolf = fox == true;  
Persian = ['Persian';' is ' 'a',' human ' 'language'];  
Spanish = {'Spanish ' 'is ' ' another'  'language'}; % deleted extra bracket.  
disp('Persian is not the same as Spanish'); % got rid of excess parentheses, expanded apostrophes to include beginning and end of sentence.  
