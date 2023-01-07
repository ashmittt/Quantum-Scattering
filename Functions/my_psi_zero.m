function [ t ] = my_psi_zero(x ,  k0  , sig0 )

t = zeros( 1 , length( x ));

for i = 1:length(x)

t( i ) = exp( 1i * k0 * x(i) ) * exp( -( x(i) + 1/4 )^2 / ( 2  * sig0^2 ));
end

