clc; clear all; close all
  
  t0 = input( 'Enter initial time: ');
  t1 = input( 'Enter final time: ');
  step_size = input ('Enter step size: ');
  y0 = input( 'Enter initial boundary condition: ');
  t = t0:step_size:t1;
  y = zeros(1, length(t));
  y (1) = y0
 i = 1;
 time = 0;
 
 while time<=4
 y (i+1) = y(i) + step_size*(4*exp(0.8*time) - 0.5*y(i));
 time = time + step_size;
 i = i + 1;
 end
 
 y_real = 4*(exp(0.8*t) - exp(-0.5*t))/1.3 + 2*exp(-0.5*t);
 disp (y);
 disp (y_real);
 plot(t,y_real,'-*');
 hold on;
 plot(t,y(1:length(t)),'-o');
 grid on;
 legend ('Real value', 'Euler value');