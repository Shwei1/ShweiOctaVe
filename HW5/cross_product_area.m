function triangle_area = cross_product_area(x1, y1, z1, x2, y2, z2, x3, y3, z3)
  v1 = [x3 - x1, y3 - y1, z3 - z1];
  v2 = [x2 - x1, y2 - y1, z2 - z1];
  triangle_area = 0.5 * norm(cross_product(v1, v2));
  figure
  fill3([x1, y1, z1], [x2, y2, z2], [z1, z2, z3], 'c');
  hold on;
  plot3(x1, y1, z1)
  plot3(x2, y2, z2)
  plot3(x3, y3, z3)
  grid on;
  title('Triangle by three vertices', 'FontSize', 14);
  hold off;

end

