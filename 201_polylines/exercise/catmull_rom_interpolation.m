function Pt = catmull_rom_interpolation(P,t)
% P is a set of points, which we assume are corresponded to equally spaced
% times between 0 and 1. t is a scalar value between 0 and 1. Return the
% value of the catmull-rom interpolation of P at time t. You may use
% cubic_hermite.m, 

M = estimate_derivatives_catmull_rom(P);
M = [M;M(1,:)];
P = [P;P(1,:)];
P_times = linspace(0,1,size(P,1));

interval = find(t>=P_times,1,'Last');
Pt = cubic_hermite(P(interval,:),P(mod(interval,size(P,1))+1,:),M(interval,:),...
    M(mod(interval,size(P,1))+1,:),(t-P_times(interval))./P_times(2));

end