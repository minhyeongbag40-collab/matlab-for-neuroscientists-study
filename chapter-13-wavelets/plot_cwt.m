% plot_cwt.m

function plot_cwt(t, cfs, yValues, yLabelText, displayMode)

% displayMode:
% "magnitude" => abs(cfs)
% "power" => abs(cfs).^2

arguments
    t double {mustBeVector, mustBeReal, mustBeFinite}
    cfs double
    yValues double {mustBeVector, mustBeReal, mustBeFinite}
    yLabelText (1,1) string = "Scale"
    displayMode (1,1) string ...
        {mustBeMember(displayMode, ["magnitude", "power"])}... 
        = "magnitude"
end


t = t(:).';
yValues = yValues(:);

if size(cfs, 2) ~= numel(t)
    error("plot_cwt: TimeSizeMismatch",..., 
        "The numeber of CWT colums must match length(t).");
end

switch displayMode
    case "magnitude"
        plotData = abs(cfs)
        titleText = "CWT Magnitude Scalogram";
        colorLabel = "Magnitude";
    
    case "power"
        plotData = abs(cfs).^2;
        titleText = "CWT Power Scalogram";
        colorLabel = "Power";
end 

figure;
imagesc(t, yValues, plotData);

axis xy;
xlabel("Time(s)");
ylabel(yLabelText);
title(titleText);

cb = colorbar'
cb.Label.string = colorLabel;

end
