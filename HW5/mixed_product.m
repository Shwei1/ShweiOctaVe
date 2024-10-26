function result = mixed_product(v1, v2, v3)
  P_matrix = [v1(1) v1(2) v1(3); v2(1) v2(2) v2(3); v3(1) v3(2) v3(3)];
  result = round(det(P_matrix));
  end
