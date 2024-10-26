##v1 = zeros(1, 3);
##v2 = zeros(1, 3);
##
##disp('Enter the first three-dimensional vector:')
##for i = 1:3
##  v1(i) = input(' ');
##end
##disp('Enter the second one:')
##for i = 1:3
##  v2(i) = input(' ');
##end

v1 = [1, 2, 3];
v2 = [4, 5, 6];

disp('The cross product of your vectors is:')
myxprod = cross_product(v1, v2);
disp(myxprod)
% disp(cross(v1, v2))

figure
quiver3(0,0,0,v1(1), v1(2), v1(3), 'LineWidth', 2, 'maxheadsize', 0.2);
hold on;
quiver3(0,0,0, v2(1), v2(2), v2(3), 'LineWidth', 2, 'maxheadsize', 0.2);
hold on;
quiver3(0, 0, 0, myxprod(1), myxprod(2), myxprod(3), 'LineWidth', 2)
title('Plotting v1, v2 and v1 x v2', 'FontSize', 14)

disp('Area of a triangle by three points:')
area = cross_product_area(1, 2, 3, 10, 50, 60, 7, 8, 9);
disp(area)

v3 = [7, 8, 9];

p = mixed_product(v1, v2, v3);
disp('The mixed product of v1, v2 and v3 is:');
disp(p);

if (abs(p) < 1e-10)
  disp('v1, v2 and v3 are complanar');
else
  disp('v1, v2, v3 are NOT complanar');
end

figure
quiver3(0,0,0,v1(1), v1(2), v1(3), 'LineWidth', 2, 'maxheadsize', 0.2);
hold on;
quiver3(0,0,0, v2(1), v2(2), v2(3), 'LineWidth', 2, 'maxheadsize', 0.2);
hold on;
quiver3(0,0,0,v3(1), v3(2), v3(3), 'LineWidth', 2);
title('Plotting a triplet of vectors', 'FontSize', 14);
hold off;

P1 = [1, 2, 3];
P2 = [3, 4, 5];
P3 = [6, 7, 8];
P4 = [1, 8, 9];
if is_in_one_plane(P1, P2, P3, P4)
  disp('Four points do lie in one plane!')
else
  disp('Four points do NOT lie in one plane!')
end

A = 1;
B = 5;
C = 7;
[x0, y0, tx, ty] = std_to_param(A, B, C);
fprintf("Original equation in standard form: %.3fx + %.3fy = %.3f\n", A, B, C)
fprintf("Parametrised equation:\n x = %.3f + %.3ft\ny = %.3f + %.3ft\n", x0, tx, y0, ty)

x0 = 0;
y0 = 1.4;
tx = -5;
ty = 1;
[A, B, C] = param_to_std(x0, y0, tx, ty);
fprintf("Original equation in parametric form:\n x = %.3f + %.3ft\ny = %.3f + %.3ft\n", x0, tx, y0, ty)
fprintf("Generalised equation: %.3fx + %.3fy = %.3f\n", A, B, C)








