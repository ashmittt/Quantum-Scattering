function [ psi ] = psi_row_rec(psi , i , j  , ej , fj  )

if j >= 1 
    psi( i , j ) = ( psi( i  , j + 1 ) - fj(i - 1 ,  j ) )/ ej( j ) ; 
    psi = psi_row_rec( psi , i , j -1  , ej , fj );
end 

end

