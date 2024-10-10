x_neg = -3:0.1:0;
x_pos = 0:0.1:3;
x_all = [x_neg, x_pos];


f_num = input("Enter the number of your pair of functions: ");

switch f_num
  case 1
    y = sin(x_all) .* exp(-2 .* x_all);
    g1 = (1 + x_neg.^2) ./ sqrt(1 + x_neg.^4);
    g2 = 2 .* x_pos + (sin(x_pos)).^2 ./ (2 + x_pos);
    plot(x_all, y, x_neg, g1, x_pos, g2, 'r');
    xlabel('x');
    ylabel('y');
    grid on;
   case 2
      y = (1 + x_all.^2)./(1 + 2 .* x_all.^2);
      g1 = 3 .* sin(x_neg) - cos(x_neg).^2;
      g2 = 3 .* sqrt(1 + x_pos.^2);
      plot(x_all, y, x_neg, g1, x_pos, g2, 'r');
      xlabel('x');
      ylabel('y');
      grid on;
   case 3
     y = (2 + (sin(x_all)).^2) ./ (1 + x_all.^2);
     g1 = 2 * x_neg.^2 ./ (1 + x_neg.^2);
     g2 = sqrt(1 + 2 .* x_pos ./ (1 + x_pos.^2));
     plot(x_all, y, x_neg, g1, x_pos, g2, 'r');
     xlabel('x');
     ylabel('y');
     grid on;
    case 4
     y = (2 + cos(x_all)) ./ (1 + exp(2 .* x_all));
     g1 = (3 + sin(2 .* x_neg).^2) ./ (1 + cos(x_neg).^2);
     g2 = 2 .* sqrt(1 + 2 .* x_pos);
     plot(x_all, y, x_neg, g1, x_pos, g2, 'r');
     xlabel('x');
     ylabel('y');
     grid on;
    case 5
     y = (1 + e.^(3 .* x_all)).^(1/4);
     g1 = (3 + sin(x_neg)) ./ (1 + x_neg.^2);
     g2 = 2 .* x_pos.^2 .* cos(x_pos).^2;
     plot(x_all, y, x_neg, g1, x_pos, g2, 'r');
     xlabel('x');
     ylabel('y');
     grid on;
    case 6
     y = (2 + 3 .* x_all) ./ (1 + x_all + x_all.^2);
     g1 = sqrt(1 + 2 .* x_neg.^2 - sin(x_neg).^2);
     g2 = (2 + x_pos) ./ cbrt(2 + e.^(- 0.1 .* x_pos));
     plot(x_all, y, x_neg, g1, x_pos, g2, 'r');
     xlabel('x');
     ylabel('y');
     grid on;
    case 7
     y = (1 + x_all) ./ (1 + sqrt(2 + x_all + x_all.^2));
     g1 = (1 + x_neg) ./ (1 + cos(x_neg).^2);
     g2 = sqrt(1 + x_pos.^2);
     plot(x_all, y, x_neg, g1, x_pos, g2, 'r');
     xlabel('x');
     ylabel('y');
     grid on;
    case 8
     y = (1 + x_all .* exp(-1 .* x_all)) ./ (2 + sqrt(x_all + sin(x_all).^2));
     g2 = (1 + 3 .* x_pos) ./ (2 + cbrt(1 + x_pos));
     g1 = sqrt(1 + abs(x_neg));
     plot(x_all, y, x_neg, g1, x_pos, g2, 'r');
     xlabel('x');
     ylabel('y');
     grid on;
  case 9
    y = (1 + x_all) ./ (1 + sqrt(2 + x_all + x_all.^2));
    g2 = (1 + x_pos) ./ (1 + cos(x_pos).^2);
    g1 = sqrt(1 + x_neg.^2);
    plot(x_all, y, x_neg, g1, x_pos, g2, 'r');
    xlabel('x');
    ylabel('y');
    grid on;
  case 10;
    y = (1 + x_all .* exp(-1 .* x_all)) ./ (2 + x_all.^2) .* sin(x_all).^2;
    g2 = (1+x_pos) ./ (2 + cos(x_pos).^2);
    g1 = sqrt(1 + abs(x_neg)) ./ (2 + abs(x_neg));
    plot(x_all, y, x_neg, g1, x_pos, g2, 'r');
    xlabel('x');
    ylabel('y');
    grid on;
  case 11
    y = (1 + exp(3 .* x_all)).^(1/4);
    g1 = (3 + sin(x_neg)) ./ (1 + x_neg.^2);
    g2 = 2 .* x_pos.^2 .* cos(x_pos).^2;
    plot(x_all, y, x_neg, g1, x_pos, g2, 'r');
    xlabel('x');
    ylabel('y');
    grid on;
  case 12
    y = (2 + 3 .* x_all) ./ (1 + x_all + x_all.^2);
    g1 = sqrt(1 + 2. * x_neg.^2 - sin(x_neg).^2);
    g2 = (2 + x_pos) ./ cbrt(2 + exp(-0.1 .* x_pos));
    plot(x_all, y, x_neg, g1, x_pos, g2, 'r');
    xlabel('x');
    ylabel('y');
    grid on;
  case 13
    y = sin(x_all) .* exp(-2 .* x_all);
    g1 = (1 + x_neg.^2) ./ sqrt(1 + x_neg.^4);
    g2 = 2 .* x_pos + sin(x_pos).^2 ./ (2 + x_pos);
    plot(x_all, y, x_neg, g1, x_pos, g2, 'r');
    xlabel('x');
    ylabel('y');
    grid on;
  case 14
    y = (1 + x_all) ./ (1 + 2 .* x_all.^2);
    g1 = 2 .* sin(x_neg) - cos(x_neg).^2;
    g2 = 3 .* sqrt(1+x_pos.^2);
    plot(x_all, y, x_neg, g1, x_pos, g2, 'r');
    xlabel('x');
    ylabel('y');
    grid on;
  case 15
    y = (2 + sin(x_all).^2) ./ (1 + x_all.^2);
    g1 = 3 .* x_neg ./ (1 + x_neg.^2);
    g2 = sqrt(1 + 2 .* x_pos ./ (1 + x_pos.^2));
    plot(x_all, y, x_neg, g1, x_pos, g2, 'r');
    xlabel('x');
    ylabel('y');
    grid on;
  otherwise
     disp("No such function pair.\n");
   end

