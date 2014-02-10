% Trigger pulse detection and simple analyses
% Author: Ken Hwang
% 2/10/2014

fprintf('Starting Trigger Pulse Acquisition');

KbName('UnifyKeyNames');

escKey = KbName('ESCAPE');
tKey = KbName('t');

trSamples = [];
abort = 0;

while ~abort
    
    [sec, keyCode, ~] = KbStrokeWait;
    if find(keyCode) == tKey
        trSamples(end+1) = sec;
    elseif find(keyCode) == escKey
        abort = 1;
    end
    
end

trIntervals = diff(trSamples);

meanTR = mean(trIntervals);
stdTR = std(trIntervals);

prompt={'Enter TR (s):'};
name='TR Test';
numlines=1;
defaultanswer={''};
answer=inputdlg(prompt,name,numlines,defaultanswer);
expectedTR = str2double(answer{1});

hist(trIntervals);
hold on
title('Histogram of Trigger Pulse Intervals (TR)');
ylabel('Bins');
xlabel('Time (s)');
plot([expectedTR expectedTR],[0 max(ylim)],'g-.','LineWidth',2);
hold off

fprintf(['Trigger Pulses Detected: %4.0f\n'],length(trSamples));
fprintf(['Mean TR Interval: %1.3f\n'],meanTR);
fprintf(['Standard Deviation of TR Interval: %1.3f\n'],stdTR);