function [S, f, t] = spectrogram(signal, fs, window_size)
    len = length(signal);
    nrw = floor(len / window_size);

    f = zeros(window_size, 1);
    t = zeros(nrw, 1);
    S = zeros(window_size, nrw);

    for i = 1:nrw
        w = signal(((i-1) * window_size + 1) : (i * window_size)) .* hanning(window_size);

        w_fft = fft(w, window_size * 2);

        w_fft = w_fft(1:window_size);

        S(:, i) = abs(w_fft);
    end

    f = ((0:window_size - 1) * ((fs / window_size) / 2))';

    t = ((0:nrw - 1) * (window_size / fs))';
end
