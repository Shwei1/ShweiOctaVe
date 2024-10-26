function result = is_in_one_plane(p1, p2, p3, p4)
  v1 = p2-p1;
  v2 = p3-p1;
  v3 = p4-p1;
  result = abs(mixed_product(v1, v2, v3)) < 1e-10;
  figure;
  grid on;
  plot3(p1(1), p1(2), p1(3), 'bo', 'MarkerSize', 8, 'MarkerFaceColor', 'b')
  hold on;
  plot3(p2(1), p2(2), p2(3), 'bo', 'MarkerSize', 8, 'MarkerFaceColor', 'b')
  hold on;
  plot3(p3(1), p3(2), p3(3), 'bo', 'MarkerSize', 8, 'MarkerFaceColor', 'b')
  hold on;
  plot3(p4(1), p4(2), p4(3), 'bo', 'MarkerSize', 8, 'MarkerFaceColor', 'b')
  title('Four points in space', 'FontSize', 14)
end
