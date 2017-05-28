
    
function h = hypho(theta,x)
    % x = [1 34 78 ]
    % theta = [theta_1; theta_2; theta_3]
    h = 1/(1+ exp(-x*theta) )
end

    
    

    
