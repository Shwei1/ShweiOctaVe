function result = cross_product(v1, v2)
  minor1 = det([v1(2) v1(3); v2(2) v2(3)]);
  minor2 = -det([v1(1) v1(3); v2(1) v2(3)]);
  minor3 = det([v1(1) v1(2); v2(1) v2(2)]);
  result = [minor1, minor2, minor3];
end

