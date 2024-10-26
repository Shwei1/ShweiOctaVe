function [x0, y0, tx, ty] = std_to_param(A, B, C)
  if B ~= 0
    x0 = 0;
    y0 = C / B;
  elseif A ~= 0
    y0 = 0;
    x0 = C / A;
  else
    disp('Your equation cannot be parametrised')
    error('Bad coefficients.')
  endif
  tx = -B;
  ty = A;
end




