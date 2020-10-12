function p1_m1(w,r,o,g)
% define input and loops
w = input('width:');
r = input('Red_light:');
o = input('Orange_light:');
g = input('Green_light:');
loops = 30;
% define axis as square
axis square;
for i=1:loops 
    % draw the crossroad and lanes
    plot([-100 100], [0 0],'k:');hold on;
    plot([0 0], [-100 100],'k:');hold on;
    plot([-100 -1/2*w], [1/2*w 1/2*w],'k-','linewidth',2);hold on;
    plot([1/2*w 100], [-1/2*w -1/2*w],'k-','linewidth',2);hold on;
    plot([-100 -1/2*w], [-1/2*w -1/2*w],'k-','linewidth',2);hold on;
    plot([1/2*w 100], [1/2*w 1/2*w],'k-','linewidth',2);hold on;
    plot([1/2*w 1/2*w], [1/2*w 100],'k-','linewidth',2);hold on;
    plot([1/2*w 1/2*w], [-100 -1/2*w],'k-','linewidth',2);hold on;
    plot([-1/2*w -1/2*w], [1/2*w 100],'k-','linewidth',2);hold on;
    plot([-1/2*w -1/2*w], [-100 -1/2*w],'k-','linewidth',2);hold on;
    plot(1/2*w,1/2*w,'go','MarkerFaceColor','g');hold on;
    plot(-1/2*w,1/2*w,'ro','MarkerFaceColor','r');hold on;
    plot(1/2*w,-1/2*w,'ro','MarkerFaceColor','r');hold on;
    plot(-1/2*w,-1/2*w,'go','MarkerFaceColor','g');hold on;
    % Erase the axis and box
    axis off;box off;
    % make traffic lights change colors
    pause(g);
    plot(-1/2*w,-1/2*w,'yo','MarkerFaceColor','y');hold on;
    plot(1/2*w,1/2*w,'yo','MarkerFaceColor','y');hold on;
    plot(1/2*w,-1/2*w,'yo','MarkerFaceColor','y');hold on;
    plot(-1/2*w,1/2*w,'yo','MarkerFaceColor','y');hold on;
    pause(o);
    plot(-1/2*w,-1/2*w,'ro','MarkerFaceColor','r');hold on;
    plot(1/2*w,1/2*w,'ro','MarkerFaceColor','r');hold on;
    plot(1/2*w,-1/2*w,'go','MarkerFaceColor','g');hold on;
    plot(-1/2*w,1/2*w,'go','MarkerFaceColor','g');hold on;
    pause(r);
    plot(-1/2*w,-1/2*w,'yo','MarkerFaceColor','y');hold on;
    plot(1/2*w,1/2*w,'yo','MarkerFaceColor','y');hold on;
    plot(1/2*w,-1/2*w,'yo','MarkerFaceColor','y');hold on;
    plot(-1/2*w,1/2*w,'yo','MarkerFaceColor','y');hold on;
    pause(o);
for j = 1:30
    x = [0 3 3 0]+j*0.1;
    y = [0 0 3 3];
    X = [x x(1)];
    Y = [y y(1)];
    plot(X,Y);
    drawnow
    pause(0.1)
end
end
end

