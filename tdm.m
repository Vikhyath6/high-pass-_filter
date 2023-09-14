% Number of signals
numSignals = 8;

% Signal parameters
signalLength = 100; % Length of each signal
signalFrequency = 1; % Frequency of each signal (for demonstration)

% Create a time vector
time = linspace(0, signalLength / signalFrequency, signalLength);

% Generate example signals
signals = cell(numSignals, 1);
for i = 1:numSignals
    signals{i} = sin(2 * pi * signalFrequency * time + (i - 1) * pi / 4);
end
% Combine signals using Time Division Multiplexing
tdmSignal = zeros(1, numSignals * signalLength);
for i = 1:numSignals
    tdmSignal((i - 1) * signalLength + 1 : i * signalLength) = signals{i};
end

% Plot original signals
figure;
for i = 1:numSignals
    subplot(numSignals, 1, i);
    plot(time, signals{i});
    title(['Signal ' num2str(i)]);
end

% Plot TDM signal
figure;
plot(linspace(0, numSignals * signalLength / signalFrequency, numSignals * signalLength), tdmSignal);
title('TDM Signal');
xlabel('Time');
ylabel('Amplitude');
% Demultiplexing the TDM signal

% Number of signals
numSignals = 8;

% Signal parameters
signalLength = 100; % Length of each signal

% Initialize a cell array to store demultiplexed signals
demuxSignals = cell(numSignals, 1);

% Demultiplex the TDM signal
for i = 1:numSignals
    startIndex = (i - 1) * signalLength + 1;
    endIndex = i * signalLength;
    demuxSignals{i} = tdmSignal(startIndex:endIndex);
end

% Create a time vector
time = linspace(0, signalLength, signalLength);

% Plot demultiplexed signals
figure;
for i = 1:numSignals
    subplot(numSignals, 1, i);
    plot(time, demuxSignals{i});
    title(['Demultiplexed Signal ' num2str(i)]);
end