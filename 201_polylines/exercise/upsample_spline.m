function U = upsample_spline(V,n)
% Sample n equally spaced points on the Catmull-Rom spline defined by V
% Now, create n equally spaced points between 0 and 1
t = linspace(0,1,n);

% Use a catmull-rom spline to interpolate at times t between the points in
% V_coarse
% 
%
%
%
% THIS IS FOR YOU TO FILL OUT
%
%
%
%
% At the end, you can plot(V) to see if your solution is correct.

U = [];

for i=1:length(t)
    U = [U;catmull_rom_interpolation(V,t(i))];
end
end