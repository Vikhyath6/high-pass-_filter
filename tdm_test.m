% Number of signals
numSignals = 8;

% Sampling parameters
Fs = 1000; % Sampling frequency
duration = 1; % Duration of the signal in seconds
t = 0:1/Fs:duration-1/Fs; % Time vector

% Frequencies for each signal
frequencies = [50, 100, 150, 200, 250, 300, 350, 400];

% Generate the input sine signals
inputSignals = zeros(length(t), numSignals);
for i = 1:numSignals
    inputSignals(:, i) = sin(2*pi*frequencies(i)*t);
end

% Plot the input sine signals
figure;
for i = 1:numSignals
    subplot(numSignals, 1, i);
    plot(t, inputSignals(:, i));
    title(['Input Signal ' num2str(i)]);
    xlabel('Time (s)');
    ylabel('Amplitude');
    grid on;
end

% Generate the TDM signal
tdmSignal = zeros(1, length(t));
for i = 1:numSignals
    signal = sin(2*pi*frequencies(i)*t);
    tdmSignal = tdmSignal + signal;
end

% Normalize the TDM signal
tdmSignal = tdmSignal / max(abs(tdmSignal));

% Plot the TDM signal
figure;
plot(t, tdmSignal);
title('TDM Signal');
xlabel('Time (s)');
ylabel('Amplitude');
grid on;

% Demodulation of TDM signal using Frequency Domain Multiplexing (FDM)
fftTDM = fft(tdmSignal);
frequencies = (0:length(fftTDM)-1) * Fs / length(fftTDM);
demodulatedSignals = zeros(length(t), numSignals);

for i = 1:numSignals
    signalFreqIdx = round(frequencies(i) / (Fs / length(fftTDM))) + 1;
    demodulatedSignals(:, i) = real(ifft(fftTDM .* (frequencies == frequencies(signalFreqIdx))));
end

% Plot the demodulated signals
figure;
for i = 1:numSignals
    subplot(numSignals, 1, i);
    plot(t, demodulatedSignals(:, i));
    title(['Demodulated Signal ' num2str(i)]);
    xlabel('Time (s)');
    ylabel('Amplitude');
    grid on;
end
