clear all;clc;
% Plot two objective functions on the same axis
x = -10:0.5:10;
f1 = (x+2).^2 - 10;
f2 = (x-2).^2 + 20;
plot(x,f1);
hold on;
plot(x,f2,'r');
grid on;
title('Plot of objectives ''(x+2)^2 - 10'' and ''(x-2)^2 + 20''');

numberOfVariables = 1;
A = []; b = [];
Aeq = []; beq = [];
lb = -1.5;
ub = 0;
% FitnessFunction = @simple_multiobjective;
% options = gaoptimset('PlotFcns',{@gaplotpareto,@gaplotscorediversity});
% x = gamultiobj(FitnessFunction,numberOfVariables,[],[],[],[],lb,ub,options);

FitnessFunction = @(x) vectorized_multiobjective(x);
options = gaoptimset('Vectorized','on','PlotFcns',{@gaplotpareto});
gamultiobj(FitnessFunction,numberOfVariables,[],[],[],[],lb,ub,options);





