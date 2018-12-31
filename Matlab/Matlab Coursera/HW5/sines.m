%got this from internet
function [ s1,s2,sums ] = sines( pts,amp,f1,f2 )

if nargin == 3
    f2  = f1 + (f1*0.05);    
elseif nargin == 2
    f1  = 100;
    f2  = f1 + (f1*0.05);    
elseif nargin == 1
    amp = 1;
    f1  = 100;
    f2  = f1 + (f1*0.05);
elseif nargin == 0
    pts = 1000;
    amp = 1;
    f1  = 100;
    f2  = f1 + (f1*0.05);
end

t = (0:pts-1)/(pts-1); %  normalize your time-steps t to between 0-1. To get f1 and f2 periods for s1 and s2 respectively
s1   = amp * sin( 2*pi*f1.*t );
s2   = amp * sin( 2*pi*f2.*t );
sums = s1 + s2;

end


% function [s1, s2, sums] = sines(pts,amp,f1,f2)
% if nargin < 1
%     pts = 1000
%     amp = 1
%     f1 = 100
%     f2 = 1.05*f1
% end
% 
% %y axis is s. x axis is f.
% 
% x1 = [0:(pts-1)]*(2*pi)*f1 %f1 periods of 
% s1 = amp*sin(x1) % with amp's effect on graph of sine
% 
% x2 = [0:(pts-1)]*(2*pi)*f2
% s2 = amp*sin(x2)
% 
% sums = s1 + s2
% 
% %I give up!