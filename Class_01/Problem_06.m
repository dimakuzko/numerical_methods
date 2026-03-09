clear all; clc;

function res = sequence_recursive(n)
    if n == 1
        res = 2;
    else
        res = sqrt(1 + sequence_recursive(n-1));
    end
end

function res = sequence_loop(n)
    res = 2;
    for i = 2:n
        res = sqrt(1 + res);
        disp(res)
    end
end

disp("Recursive")
sequence_recursive(10)
disp("Loop")
sequence_loop(10)