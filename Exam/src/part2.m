initialCellCount = 1*10^5;
initialError = 1*10^4;
errorBar = zeros(size(cells,4),1);
boundaryCellCount = zeros(size(cells,3),1);
cellCount = zeros(size(cells,4),1);
for i = 1:size(cells,4)
    for islice = 1:size(cells,3)
        boundaryCellArray = bwboundaries(cells(:,:,islice,i));
        if size(boundaryCellArray,1)==0
            boundaryCellCount(islice) = 0;
        else
            for iobject = 1:size(boundaryCellArray,1)
                boundaryCellArray{iobject} = unique(boundaryCellArray{iobject},'rows');
                boundaryCells = boundaryCellArray{iobject};
            end
            count = zeros(size(boundaryCells,1),1);
            for icell = 1:size(boundaryCells,1)
                count(icell) = sum(cells(boundaryCells(icell,1),boundaryCells(icell,2),islice,i));
            end
            boundaryCellCount(islice) = sum(count(:));
        end
    end
    errorBar(i) = sum(boundaryCellCount);
    cellCount(i) = sum(sum(sum(cells(:,:,:,i))));
end
xvalues = [ 0 10 12 14 16 18 20 22 ];
cellCount = [ initialCellCount; cellCount ];
errorBar = [ initialError; errorBar ];
figure
errorbar(xvalues,cellCount,errorBar,'-o','lineWidth',4,'DisplayName','Experimental Data')
xlabel('Time [Days]')
ylabel('Tumor Cell Count')
title('Gompertzian Fit to Rat''s Brain Tumor Growth')
legend('show','location','northwest')

saveas(gcf,'part2.fig')