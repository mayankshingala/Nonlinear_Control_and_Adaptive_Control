%% Saturation function

function y = sat(x)

if x > 1
    y = 1;
elseif x < -1
    y = -1;
else
    y = x;
end

end