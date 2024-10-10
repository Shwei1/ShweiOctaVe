f_num = input("Enter the number of your function: ");

switch f_num
  case 1
    a = 2456;
    b = 0.00078;
    c = input("c = ");
    f1 = (a * b)/cbrt(c) * (a+b) * sin(3 * c)
  case 2
    a = 0.02456;
    b = 0.007823;
    c = input('c = ');
    f2 = (a+b)/(a-b) * asin(c)
   case 3
    a = 0.2456;
    b = 0.20078;
    c = input("c = ");
    f3 = ((a + b) * c/(a-b)).^2 * log(1+c)
   case 4
    a = 0.02456;
    b = 0.007823;
    c = input('c = ');
    f4 = c.^3/13 * (a-b).^5 * cos(a * c)
   case 5
    a = 0.12456;
    b = 0.007823;
    c = input('c = ');
    f5 = (a * b)/cbrt(c) * (a.^3 + b) * (sin(c)).^2
   case 6
    a = 0.02456;
    b = 0.007823
    c = input('c = ');
    f6 = (a+b)/(a-b) * atan(c)
   case 7
    a = 0.2456;
    b = 0.20078;
    c = input('c = ');
    f7 = ((a+b) * c/(a-b)).^3 * log(1+c.^2)
   case 8
    a = 0.2456;
    b = 0.007823;
    c = input('c = ');
    f8 = c.^2/13 * (a-b).^3 * cos(a * c.^2)
   case 9
    a = 0.12456;
    b = 0.078;
    c = input('c = ');
    f9 = a*b/cbrt(c) * (a+b).^2 * sin(c)
   case 10
    a = 0.02456;
    b = 0.007823;
    c = input('c = ');
    f10 = c.^3/12 * (a-b).^3 * (a.^2 * c)
   case 11
    a = 0.2456;
    b = 0.20078;
    c = input('c = ');
    f11 = ((a+b) * c/(a-b)).^2 * log(1+c)
   case 12
    a = 0.02456;
    b = 0.007823;
    c = input('c = ');
    f12 = (a + b.^2)/(a-b) * acos(c)
   case 13
    a = 2456;
    b = 0.00078
    c = input('c = ');
    f13 = a.^2*b/cbrt(c) * (1+b) * sin(2 * c)
   case 14
    a = 0.02456;
    b = 0.007823;
    c = input('c = ');
    f14 = (a+b)/(a-b) * ln(1 + a*c)
   case 15
    a = 0.2456;
    b = 0.20078;
    c = input('c = ');
    f15 = a * b/cbrt(1+c) * (a+b) * sin(c)
   case 16
    a = 0.02456;
    b = 0.007823
    c = input('c = ');
    f16 = c.^3/13 * (a-b).^7 * cos(a*c)
   case 17
    a = 0.12456;
    b = 0.0078;
    c = input('c = ');
    f17 = c.^3/cbrt(1+c) * (a+b) * sin(c)
   case 18
    a = 0.02456;
    b = 0.007823;
    c = input('c = ');
    f18 = (a+b)/(a-b) * atan(a*c)
   otherwise
    disp("No such function.")
end
