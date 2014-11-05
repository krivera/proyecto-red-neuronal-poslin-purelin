
x=[15 0 20 0;10 20 0 40]
d=[1 1 0 1]

figure
plotpv(x,d)
%grid on
red=newp([0 30;0 40],1,'poslin')
%red.iw{1,1}=[30,20]
%red.b{1}=5
red=train(red,x,d)
peso=red.iw{1,1}
bias=red.b{1}

plotpc(peso,bias)