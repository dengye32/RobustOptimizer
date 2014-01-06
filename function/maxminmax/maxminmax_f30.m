function f = maxminmax_f30(x,y,z)
% Sphere-sphere-rastrigin function (Type 6)
% Global optimum value: f(0.1,0.1,0.1) = 0
%
% Property
% * Multimodal
% * xy-correlation: Yes
% * xz-correlation: No
% * yz-correlation: Yes
shift = 0.1;
if nargin == 0
	f = shift;
	return;
end

x = x - shift;
y = y - shift;
z = z - shift;
X = x;
Y = x + y;
Z = y + z;
a = 1;
b = 2;
c = 2;
f = - a * sum(X.^2) ...
	+ b * sum(Y.^2) ...
	- c * rastrigin(Z);
end