function signal = apply_reverb(signal, impulse_response)
  impulse_response = stereo_to_mono(impulse_response); % transform impulse_response in mono
  signal = fftconv(signal, impulse_response); % convolutia dintre semnal si impuls
  signal = signal / max(abs(signal)); % normalizarea
endfunction

