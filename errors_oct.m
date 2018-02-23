function [ea, er, erp] = errors_oct(x, y)
	ea  = abs(x/y)
	er  = abs(ea/x)
	erp = 100*er
end

errors_oct(pi, 22/7)