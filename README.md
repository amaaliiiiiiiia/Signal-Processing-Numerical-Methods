# Signal Processing - Numerical Methods

## 1. Numerical Music (Digital Signal Processing)
This module explores the manipulation of digital audio through frequency analysis and sound synthesis.
- `stereo_to_mono`: Implements signal downmixing by averaging multi-channel data into a single-channel (mono) vector, preserving the essential amplitude information.
- `spectrogram`: Computes the Short-Time Fourier Transform (STFT). It breaks the signal into overlapping windows to visualize how the frequency spectrum evolves over time.
- `oscillator`: It generates a pure sine wave and applies an ADSR Envelope (Attack, Decay, Sustain, Release) to shape the sound's dynamics, making it sound like a real musical instrument rather than a flat tone.
- `low_pass`: Implements a frequency-domain filter. By transforming the signal into the frequency domain (FFT) and applying a binary mask (Heaviside-like step function), it eliminates high-frequency noise while preserving the base tones.
- `apply_reverb`: Simulates acoustic environments using Linear Convolution. By convolving a mono signal with an "Impulse Response", it reproduces the echo and resonance of specific physical spaces.

## 2. "Robotzii" (Numerical Interpolation)
This section focuses on path-finding and curve fitting, essential for smooth robotic movement and trajectory planning.
- `parse_data`: A robust data ingestion utility for reading spatial coordinates (abscissas and ordinates) from external datasets.
- `vandermonde`: Implements polynomial interpolation using the Vandermonde Matrix. It solves a system of linear equations to find the unique coefficients of a polynomial that passes through all given data points.
- `p_vandermonde`: Evaluates the resulting interpolating polynomial at specific points to generate a smooth path (interpolation curve) between the original discrete data points.

## 3. Recommendation Systems
A data science approach to predicting user preferences based on historical interaction data.
- `cosine_similarity`: Calculates the angular distance between two vectors in a multi-dimensional space. Unlike Euclidean distance, it measures the similarity in orientation (content profile) rather than magnitude, making it ideal for comparing user tastes.
- `preprocess`: Implements data cleaning by filtering "noisy" users (those with too few reviews). This ensures that the recommendation model is built on statistically significant interactions.
- `recommendations`: The core engine utilizing Singular Value Decomposition (SVD).
