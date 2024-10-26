function [A, B, C] = param_to_std(x0, y0, tx, ty)
  A = ty;
  B = -tx;
  C = A * x0 + B * y0;
  end
