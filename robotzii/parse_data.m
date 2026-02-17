function [x, y] = parse_data(filename)
    % file input format:
    % n
    % x0 x1 ... xn
    % y0 y1 ... yn

    % TODO 1: Open the file for reading
    input = fopen(filename, 'r'); % deschid fisierul

    % TODO 2: Read n, x, y from the file
    n = str2double(fgetl(input));
    x = fscanf(input, '%f', [1, n+1])';
    y = fscanf(input, '%f', [1, n+1])';

    % TODO 3: Close the file
    fclose(input);
end