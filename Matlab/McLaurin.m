% This MATLAB code computes e^x upto n significant digits using Maclaurin Series expansion of e^x
% x and n are inputs

x=input('input x: ');            % supply x from keyboard
d=input('How many significant digits? ');  % supply x from keyboard
ErrorTol=0.5*10^(2-d);
fprintf('Correct Value for exp(x)= %f   \n', exp(x));  
fprintf('Compute e^x numerically with Error Tolerance= %f \n', ErrorTol);

i=0;   sumOLD=0;               
while(1)
  sum = sumOLD + (x^i)/factorial(i);
  errA = abs((sum - sumOLD)/sum)*100;
  
  i = i+1;
  fprintf('# of Terms = %d  e^x = %f ApproxErr = %f \n', i, sum, errA);
  if (errA <= ErrorTol) break; end;
        
  sumOLD = sum;
end;
