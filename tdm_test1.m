% Define the number of signals and the duration of the transmission
num_signals = 8;
duration = 10; % Total time duration (seconds)

% Create empty arrays to store the signals
signal_length = 1000; % Length of each signal (samples)
signals = zeros(num_signals, signal_length);

% Generate sample signals (you can replace these with your own signals)
for i = 1:num_signals
    % Generate a sample signal (sine wave)
    frequency = randi([1, 10]); % Random frequency between 1 and 10 Hz
    amplitude = randi([1, 5]);  % Random amplitude
    phase = randi([0, 360]);    % Random phase shift (degrees)
    t = linspace(0, duration, signal_length);
    signals(i, :) = amplitude * sin(2 * pi * frequency * t + deg2rad(phase));
end

% Create a time division multiplexed signal
TDM_signal = zeros(1, num_signals * signal_length);

% Perform TDM by interleaving the signals
for i = 1:num_signals
    TDM_signal((i - 1) * signal_length + 1:i * signal_length) = signals(i, :);
end

% Plot the original signals
figure;
for i = 1:num_signals
    subplot(num_signals, 1, i);
    plot(t, signals(i, :));
    title(['Signal ', num2str(i)]);
end

% Plot the time division multiplexed signal
figure;
plot(linspace(0, duration * num_signals, num_signals * signal_length), TDM_signal);
title('Time Division Multiplexed Signal');
xlabel('Time (s)');

% Optional: You can save the TDM_signal to a file for further processing or transmission.
% save('TDM_signal.mat', 'TDM_signal');
