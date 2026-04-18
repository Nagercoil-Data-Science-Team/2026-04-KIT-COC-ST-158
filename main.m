clc;
clear;
close all;

%% Generate Random (but realistic) Baseline Values
rng(1); % for reproducibility

% Displacement (in meters, small values)
base_disp = 0.15 + 0.05*rand();     % ~0.15–0.20
avg_disp  = base_disp - (0.02 + 0.02*rand()); % improved (lower)

% Factor of Safety (dimensionless)
base_fos = 0.7 + 0.2*rand();        % ~0.7–0.9
avg_fos  = base_fos + (0.2 + 0.2*rand()); % improved (higher)

%% Display Values in Command Window
fprintf('\n===== BASELINE PERFORMANCE =====\n');
fprintf('Base Displacement : %.4f m\n', base_disp);
fprintf('Avg Displacement  : %.4f m\n', avg_disp);
fprintf('Base FoS          : %.4f\n', base_fos);
fprintf('Avg FoS           : %.4f\n', avg_fos);
fprintf('================================\n\n');

%% Plot 1: Displacement Comparison
figure('Name','Displacement Comparison','Color','w');

bar([base_disp avg_disp])
set(gca,'XTickLabel',{'Baseline','Average'})
ylabel('Displacement (m)')
title('Displacement Comparison')
grid on

% Value labels
text(1, base_disp+0.005, num2str(base_disp,'%.3f'),'HorizontalAlignment','center');
text(2, avg_disp+0.005, num2str(avg_disp,'%.3f'),'HorizontalAlignment','center');

%% Plot 2: Factor of Safety Comparison
figure('Name','Factor of Safety Comparison','Color','w');

bar([base_fos avg_fos])
set(gca,'XTickLabel',{'Baseline','Average'})
ylabel('Factor of Safety')
title('Factor of Safety Comparison')
grid on

% Value labels
text(1, base_fos+0.02, num2str(base_fos,'%.3f'),'HorizontalAlignment','center');
text(2, avg_fos+0.02, num2str(avg_fos,'%.3f'),'HorizontalAlignment','center');