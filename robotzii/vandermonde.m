function coef = vandermonde(x, y)
    % x = [x0, x1, ..., xn]'
    % y = [y0, y1, ..., yn]'
    % coef = [a0, a1, a2, ..., an]'

    n = length(x);
    for i = 1:n
        van(:, i) = x .^ (i-1); % construiesc matricea Vandermonde
    end

    % TODO: Calculate the Vandermonde coefficients
    coef = van\y; % rezolv sistemul de ecuatii
endfunction
