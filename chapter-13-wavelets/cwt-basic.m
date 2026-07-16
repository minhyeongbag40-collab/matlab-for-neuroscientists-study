%% Chapter 13: Continuous Wavelet Transform
% MATLAB for Neuroscientists study
%
% Purpose:
%   Understand how CWT represents a signal in time and frequency.

clear;
clc;
close all;

%% Parameters
fs = 128;
duration = 10;

t = 0:1/fs:duration-1/fs;

%% Example signal
signal = sin(2*pi*10*t);

%% Continuous Wavelet Transform
[wt, frequency] = cwt(signal, fs);

%% Scalogram
figure;
surface(t, frequency, abs(wt).^2);
axis tight;
shading interp;

xlabel('Time (s)');
ylabel('Frequency (Hz)');
title('CWT Scalogram of a 10-Hz Signal');

set(gca, 'YScale', 'log');
