clear all;
close all;
if exist('cells','var')~=1
    load('cells.mat');
end
cd ..,cd src
dataDimensions=size(cells);
for currentTimePlot=1:dataDimensions(4)
nrow = round(sqrt(length(data(1,1,:,currentTime))));
ncol = nrow;
mainPlotMarginTop = 0.06;
mainPlotMarginBottom = 0.12;
mainPlotMarginLeft = 0.08;
mainPlotMarginRight = 0.1;
mainPlotPositionX = 0.05;
mainPlotPositionY = 0.08;
mainPlotWidth = 1 - mainPlotMarginRight - mainPlotPositionX;
mainPlotHeight = 1 - mainPlotMarginTop - mainPlotPositionY;
mainPlotTitleFontSize = 12;
mainPlotAxisFontSize = 12;
subPlotFontSize = 10;
subplotInterspace = 0.03;
subplotWidth = (1-mainPlotMarginLeft-mainPlotMarginRight-nrow*subplotInterspace)/ncol;
subplotHeight = (1-mainPlotMarginTop-mainPlotMarginBottom-ncol*subplotInterspace)/nrow;
colorbarFontSize = 13;
colorbarWidth = 0.03;
colorbarPositionY = mainPlotMarginBottom;
colorbarPositionX = 1 - mainPlotMarginRight;
colorbarHeight = nrow*subplotHeight+(nrow-1)*subplotInterspace;
colorLimits = [0,max(max(max(data(:,:,:,currentTime))))];
figHandle = figure();
figHandle.Position = [0, 0, 900, 1350];
figHandle.Color = [0.9400 0.9400 0.9400];
mainPlot = axes();
mainPlot.Color = 'none';
mainPlot.FontSize = 11;
mainPlot.Position = [ mainPlotPositionX mainPlotPositionY mainPlotWidth mainPlotHeight ];
mainPlot.XLim = [0 1];
mainPlot.YLim = [0 1];
mainPlot.XLabel.String = 'Voxel Number in X Direction';
mainPlot.YLabel.String = 'Voxel Number in Y Direction';
mainPlot.XTick = [];
mainPlot.YTick = [];
mainPlot.XAxis.Visible = 'off';
mainPlot.YAxis.Visible = 'off';
mainPlot.XLabel.Visible = 'on';
mainPlot.YLabel.Visible = 'on';
mainPlot.Title.String = ['Time = ', num2str(currentTime), 'days. Brain MRI slices along Z-direction, Rat W09. No radiation treatment.'];
mainPlot.XLabel.FontSize = mainPlotAxisFontSize;
mainPlot.YLabel.FontSize = mainPlotAxisFontSize;
mainPlot.Title.FontSize = mainPlotTitleFontSize;
axes(mainPlot);
caxis(colorLimits);
cbar = colorbar;
ylabel(cbar,'Tumor Cell Count per Voxel');
cbar.Position = [ colorbarPositionX ... 
                  colorbarPositionY ...
                  colorbarWidth ...
                  colorbarHeight ...
                ];
cbar.FontSize = colorbarFontSize;
currentTime = 0;
for irow = nrow:-1:1
    for icol = 1:ncol
        currentTime = currentTime + 1;
        subPlot = axes( 'position', [ ... 
                                      (icol-1)*(subplotInterspace+subplotWidth) + mainPlotMarginLeft ...
                                      (irow-1)*(subplotInterspace+subplotHeight) + mainPlotMarginBottom ...
                                      subplotWidth ...
                                      subplotHeight ...
                                    ] ...
                      );
        nSlice = data(:,:,:,currentTime);
        imagesc(nSlice);
        BW = imbinarize(nSlice);
        objects = bwboundaries(BW,'noholes');
        hold on;
            for j = 1:length(objects)
                contour = objects{j};
                plot(contour(:,2), contour(:,1), 'r', 'LineWidth', 4);
            end
    if(currentTime== 13)
        set(gca, 'XTick', [20 40 60], 'YTick', [10 20 30 40]);
    elseif(currentTime== 14 || currentTime == 15 || currentTime == 16)
        set(gca, 'XTick', [20 40 60],'YTick', [] );
    elseif (currentTime == 1 || currentTime == 5 || currentTime == 9 || currentTime == 13)
        set(gca, 'XTick', [], 'YTick', [10 20 30 40]);
    else
        set(gca, 'XTick', [], 'YTick', []);
    end
title(['z = ' num2str(currentTime)]);
caxis([0 3.5*10^4]);
hold on;
    end
end

saveas(gcf,'tumorGraphDay'); 
end