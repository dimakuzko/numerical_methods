clear all; clc;

function res = f(x)
    res = x.^3 - 7*x.^2 + 14*x - 6;
end

% Finding the root with built-in functions
root_fzero = fzero(@f, 0.5)
root_fsolve = fsolve(@f, 0.5)
diff = abs(root_fsolve - root_fzero)
