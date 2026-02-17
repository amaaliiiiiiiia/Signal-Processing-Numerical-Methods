function x = oscillator(freq, fs, dur, A, D, S, R)
  x = 0;
  t = ((0:(dur * fs - 1)) / fs)'; % vectorul de timp
  x = sin(2 * pi * freq * t); % sine wave
  total = length(t);

  % attack samples, decay samples, sustain samples, release samples
  Asmp = floor(A * fs);
  Dsmp = floor(D * fs);
  Rsmp = floor(R * fs);
  Ssmp = total - Asmp - Dsmp - Rsmp; % restul din numarul total

  % attack envelope, decay envelope, sustain envelope, release envelope
  Aenv = (linspace(0, 1, Asmp))'; % linear ramp
  Denv = (linspace(1, S, Dsmp))';
  Senv = S * ones(Ssmp, 1); % constant value
  Renv = (linspace(S, 0, Rsmp))';

  env = [Aenv; Denv; Senv; Renv]; % concatenarea celor 4 de mai sus

  x = x .* env; % inmultirea semnalului cu envelope (folosind produsul Hadamard)
endfunction

