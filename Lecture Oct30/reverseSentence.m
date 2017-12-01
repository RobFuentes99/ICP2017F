function reverseSentence(inputStr)
    [token, remain] = strtok(inputStr);
    if ~isempty(remain)
        reverseSentence(remain);
    end
    fprintf('%s ',token);
end