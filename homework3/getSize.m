function b = getSize(path)
x = dir(path);
b = sum([x.bytes]);
end
