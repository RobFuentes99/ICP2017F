close all
load('data3D.mat');
figure( 'Position', [0, 0, 600, 900] ...
        ..., 'visible', 'off'...
        ..., 'Color', 'none'...
        );
hold on
mainPlotPositionX = 0.2;
mainPlotPositionY = 0.3;
mainPlotWidth = 1;
mainPlotHeight = 1;
mainPlot = axes( 'position' ...
        , [mainPlotPositionX mainPlotPositionY mainPlotWidth mainPlotHeight] ...
        , 'Xlim',[0,1], 'Ylim',[0,1] ...
        , 'Color', 'none' ...
        );        
imagesc(data(:,:,10));
hold off;