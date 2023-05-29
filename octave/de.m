pkg load symbolic

# Symbolic
##syms y(t) x(t)
##
##DE = diff(y, t) - y == 0
##ode_sys = [diff(x(t), t) == y(t); diff(y(t), t) == x(t)]
##
##sol = dsolve(DE, y(0) == 1)
##sol2 = function_handle(sol)
##x = -10:0.1:10;
##plot(x, sol2(x), 'g*')
##
##soln = dsolve(ode_sys)
##sx = soln.x
##sy = soln.y

# Numeric
F = @(t, y) 2*y;
t0 = -1;
h = 1;
tfin = 1;
y0 = 1;
[t, y] = ode45(F, [t0, tfin], y0)







