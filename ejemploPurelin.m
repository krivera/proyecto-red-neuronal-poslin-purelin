x= [ -0.5 -0.5 +0.3 -0.1;-0.5 +0.5 -0.5 +1.0];
d = [1 1 0 0];
plotpv(x,d)
%grid on;
%red=newp([minmax],num_Neurona,funcion_activacion)
red=newp([-1 1;-1 1],1,'purelin')
red.iw{1,1}=[1,1];
red.b{1}=1;

red=train(red,x,d)
peso=red.iw{1,1}
bias=red.b{1}
plotpc(peso,bias)
