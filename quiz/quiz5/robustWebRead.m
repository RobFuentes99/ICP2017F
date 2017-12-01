function robustWebRead(input)
try 
    disp('Reading data from the web address...')
    dataURL = input;
    site = webread(dataURL);
    fid = fopen(site);
    fprintf(fid, '%s', site);
    fclose(fid);
    disp(fid);
catch
    disp('Warning: The requested web address does not exist! Gracefully exiting...');
end
end