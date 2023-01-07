function [ o ] = omega_rec( o , e, psi , vj , i )

for j = ( 2 :length( psi( 1 , :  )) - 2)

    o( j ) = -psi(  i , j + 1 ) + ( 1i + e^2 * vj( j ) + 2 )*psi(i ,  j ) - psi( i , j - 1 ); 
end 


end

