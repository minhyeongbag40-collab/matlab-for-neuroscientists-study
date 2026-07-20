% run_cwt_example

% Example signal
fs = 128;
duration = 10;

t = 0:1/fs:duration-1/fs;

% 10-Hz oscillation throughout the signal
x = sin(2*pi*10*t);

% Add a short 30-Hz transient from 4 to 5 seconds
burstMask = t>= 4 & t < 5 ;
x = x +burstMask .* sin(2*pi*30*t);


sigma = 10;
maxWavelet = 10;
scales = 1:200;

cfs = my_cwt( ...
    t, ...
    x, ...
    @my_morlet, ...
    maxWavelet, ...
    scales, ...
    sigma);

%% Convert the sample-based Morlet scales to approximate frequency
pseudoFrequency = sigma * fs ./ (2*pi*scales);

% imagesc is easier to interpret with ascending y-values.
[pseudoFrequency, order] = sort(pseudoFrequency, "ascend");
cfsByFrequency = cfs(order, :);

%% Plot power scalogram
plot_cwt( ...
    t, ...
    cfsByFrequency, ...
    pseudoFrequency, ...
    "Approximate frequency (Hz)", ...
    "power");

ylim([1 50]);
