function [t, y] = heun(f, a, b, y0, N)
    % Find out how many equations are in our system
    num_vars = length(y0); 
    
    % Initialize time vector
    t = linspace(a, b, N+1)';
    
    % Initialize y as a matrix: (N+1) rows (time) by num_vars columns (states)
    y = zeros(N+1, num_vars);
    
    % Assign initial conditions to the first row. 
    % y0(:)' guarantees it acts as a row vector, regardless of how the user inputted it.
    y(1, :) = y0(:)';
    
    % Calculate time step size
    tau = (b - a) / N;
    
    % Main Heun's Method Loop
    for n = 2:(N+1)
        % Extract the previous state and force it into a column vector for f()
        y_prev = y(n-1, :)'; 
        
        % Predictor (Euler) Step
        k1 = f(t(n-1), y_prev);
        y_temp = y_prev + tau * k1;
        
        % Corrector Step
        k2 = f(t(n), y_temp);
        
        % Update the state using the average of the slopes, transposed back to a row
        y(n, :) = (y_prev + (tau / 2) * (k1 + k2))';
    end
end