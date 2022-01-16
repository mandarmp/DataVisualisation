%Errorbar plots for 2 standard error of means
figure;

load repeatedMovmentTime;
load changedMovementTime;

hold on;
mny=mean(repeatedMovementTime); % the y means (assumes columns are observations)
err = 2*std(repeatedMovementTime)/sqrt(size(repeatedMovementTime,1));
%err = std(repeatedMovementTime);
errorbar(x_label_locations(1),mny,err,'o')  

hold off;
hold on;
mny=mean(changedMovementTime);                    % the y means (assumes columns are observations)
err = 2*std(changedMovementTime)/sqrt(size(changedMovementTime,1));
%err = std(changedMovementTime);
errorbar(x_label_locations(2),mny,err,'o')  
hold off;
set(gca,'Xtick',x_label_locations,'XTickLabel',x_axis_labels)
ylim([250 500])
xlim([0 7])
title('Movement time plot','FontSize',10);
legend('repeat','switch')
print('t test for movement time')
[h_movT,p_movT] = ttest2(repeatedMovementTime,changedMovementTime);

saveas(figure(4),'MovementTime','png')
