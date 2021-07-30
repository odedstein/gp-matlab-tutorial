function M = estimate_derivatives_catmull_rom(P)
% Assuming P are the points of a closed curve, use the Catmull-Rom
% technique to estimate the derivative at each point of P by looking at its
% neighbors
M = 0.5.*(P([(2:size(P,1))';1],:) - P([size(P,1);(1:size(P,1)-1)'],:));
%M = M./normrow(M);
end