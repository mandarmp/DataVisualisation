%calling and plotting subplots in loops through hold on function

figure;

load repeatedTrialIndex,roh,changedTrialIndex,DeviationRepeated,DeviationChanged;

for n = 1: numel(repeatedTrialIndex)
    subplot(4,3,rOH(repeatedTrialIndex(n)));
    %axes(axis1)
    hold on;
    %x = zeros(size(DeviationRepeated{1,n}))';
    sz = size(DeviationRepeated{1,n});
    x=linspace(0,100,sz(1));

    plot(x,...
    DeviationRepeated{1,n}','*','MarkerSize',0.5,'Color',[1,0,0]);
    xlabel('time[% of movement duration]') 
    ylabel('deviation')
    ylim([0 3])
    
    %clear axis1
end

for n = 1: numel(changedTrialIndex)
    subplot(4,3,rOH(changedTrialIndex(n))+6);

    hold on;
    %x = zeros(size(DeviationChanged{1,n}))';
    sz = size(DeviationChanged{1,n});
    x=linspace(0,100,sz(1));
    plot(x,...
    DeviationChanged{1,n}','*','MarkerSize',0.5,'Color',[0,0,1]);
    xlabel('time[% of movement duration]')
    ylabel('deviation')
    ylim([0 3])
    %%clear axis2
end

