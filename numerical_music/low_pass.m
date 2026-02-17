function signal = low_pass(signal, fs, cutoff_freq)
    x = fft(signal); % Transformata Fourier
    len = length(signal);
    f = (0:len-1)*(fs/len); % Frecventele

    mask = zeros(size(f));
    for i = 1:length(f)
        if f(i) <= cutoff_freq % Masca pentru frecventele mai mici decat cutoff_freq
            mask(i) = 1;
        end
    end

    x = x .* mask';
    signal = ifft(x); % Transformata Fourier inversa
    signal = signal / max(abs(signal)); % Normalizarea semnalului
end
