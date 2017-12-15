close all;
cd .., cd data
if exist('cells', 'var')~=1
    load('cells.mat');
end
cd ..,cd src
dataDimensions=size(cells);
for currentTimePlot=1:dataDimensions(4)
    figure(currentTimePlot)
    time=num2str(2*currentTimePlot+8);

nrow = round(sqrt(length(cells(1,1,:,currentTimePlot))));
ncol = nrow;

figHandle = figure();
figHandle.Position = [0, 0, 900, 1350];
figHandle.Visible = 'on';
figHandle.Color = [0.9400    0.9400    0.9400];
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

mainPlot = axes();
mainPlot.Color = 'none';
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
mainPlot.Title.String = ['Time=',time,' days. Brain MRI slices along Z-direction, Rat W09. No radiation treatment.'];
mainPlot.FontSize = 11;
mainPlot.XLabel.FontSize = mainPlotAxisFontSize;
mainPlot.YLabel.FontSize = mainPlotAxisFontSize;
mainPlot.Title.FontSize = mainPlotTitleFontSize;

colorbarPositionX = 1 - mainPlotMarginRight;
colorbarPositionY = mainPlotMarginBottom;
colorbarWidth = 0.03;
colorbarHeight = 1 - 2*colorbarPositionY;
colorbarFontSize = 13;
colorLimits = [0,max(max(max(cells(:,:,:,currentTimePlot))))];
figHandle = gcf;
figHandle.Visible = 'on';
figHandle.Position = [0, 0, 900, 1350];
figHandle.Color = [0.9400 0.9400 0.9400];

axes(mainPlot);
caxis(colorLimits);
cbar = colorbar;
ylabel(cbar,'Number of Tumor Cells');
cbar.Position = [ colorbarPositionX ...
                  colorbarPositionY ...
                  colorbarWidth ...
                  colorbarHeight ...
                ];
cbar.FontSize = colorbarFontSize;

sliceNumber = 0;
for irow = nrow:-1:1
    for icol = 1:ncol
        sliceNumber = sliceNumber + 1;
        subPlot = axes( 'position', [ ... set the position of the axes for each subplot
            (icol-1)*(subplotInterspace+subplotWidth) + mainPlotMarginLeft ...
            (irow-1)*(subplotInterspace+subplotHeight) + mainPlotMarginBottom ...
                subplotWidth ...
                subplotHeight ...
                ] ...
           );
 imagesc(cells(:,:,sliceNumber,currentTimePlot),[0,max(max(max(cells(:,:,:,currentTimePlot))))])
        subplotTitle=['z=',num2str(sliceNumber)];
            title(subplotTitle)
            if mod(sliceNumber,4)~=1
                set(gca,'YTickLabel',[]);
            end
            if ceil(sliceNumber/4)~=4
                set(gca,'XTickLabel',[]);
            end
            hold on
    end
end
hold on 
cd .., cd result
figureName=['tumorPlotT',time,'.png'];
saveas(gcf,figureName);
cd .., cd src
hold off
end