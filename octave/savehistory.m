% Get the command history as a cell array of strings
cmd_history = history();

% Open a file for writing
fid = fopen('my_commands.txt', 'w');

% Loop over the command history and write each command to the file
for i = 1:numel(cmd_history)
    fprintf(fid, '%s\n', cmd_history{i});
end

% Close the file
fclose(fid);
