function matr = graphic()
  x = -2:0.1:2
  y = x.*(1-x)+0.5
  figure('numbertitle', "off", 'Name', 'Fig1')
  subplot(2, 3, 1)
  plot(x,y, 'LineStyle', ':', 'LineWidth', 3, 'Color', 'g')
  grid on
  xlabel('x')
  ylabel('y')
  title('my graphic')
  subplot(2, 3, 2)
  x2 = -pi:0.1:pi
  plot(x2, sin(x2))
end
