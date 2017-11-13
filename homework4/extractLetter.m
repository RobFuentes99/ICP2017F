List = { {'M','A','T','L','A','B'}, {' '}, {'i','s'}, {' '}, {'a'}, {' '}, {'s','t','r','a','n','g','e'}, {', '}, {'b','u','t',' '}, {'p','o','p','u','l','a','r'}, {' '}, {'p','r','o','g','r','a','m','m','i','n','g',' ','l','a','n','g','u','a','g','e'} };
ListLength = length(List);
fullString = '';
for a = 1:ListLength
    temp1 = List{a};
    temp1Length = length(temp1);
    for b = 1:temp1Length
        fullString = [fullString, temp1{b}];
    end
end
disp(fullString)

