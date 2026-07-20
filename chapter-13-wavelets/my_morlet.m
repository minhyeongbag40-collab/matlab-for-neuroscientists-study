% my_morlet.m
function psi = my_morlet(t, params)

% params(1) is th dimensionlee center angular frequency.
% The textbooxk uses sigma = 10

arguments
    t double {mustBeReal, mustBeFinite}
    params double = 10
end

if isempty(params)
    sigma = 10 ;
else 
    sigma = params(1);
end

if ~isscalar(sigma) || ~isfinite(sigma) || sigma <= 0
    error("my_morlet:InvalidSigma", ...
        "sigma must be a positive finite scalar.");
end


% small correction makes the integral theoretically closer to zero.
zeroMeanCorrction = exp(-0.5*sigma^2);

psi = pi^(-1/4) .* ...
      (exp(1i * sigma .* t) - zeroMeanCorrection) .* ...
      exp(-0.5 * t.^2);

end
