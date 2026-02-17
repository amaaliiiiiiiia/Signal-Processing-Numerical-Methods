function mono = stereo_to_mono(stereo)
  [m, n] = size(stereo);
  mono = zeros(m, 1); % initializez vectorul mono cu 0
  for i = 1:m
    s = sum(stereo(i, :)); % fac suma elementelor de pe fiecare linie
    mono(i) = s / n;
  endfor
  % Normalize
  mono = mono / max(abs(mono));
endfunction

