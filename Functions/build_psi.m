function [ psi , omega , fj ] = build_psi( psi , omega , fj , ej , vj , i , e , N , J )

% build next psi , row, i  == row no ( initial == 2 ), j == J

if i == N 

    psi( i , J ) = 0 ; 
    psi = psi_row_rec( psi , i , J -1 , ej , fj ) ; 


elseif i < N 

    psi( i , J ) = 0 ; 
    psi = psi_row_rec( psi , i , J -1 , ej , fj ) ; 


    o = zeros( 1 , J );
    o( 1 ) = -psi( i , 2 ) + ( 1i  + e^2 * vj( 1 ) + 2)*psi( i , 1 );
    o = omega_rec( o , e , psi , vj , i );
    omega( i , : ) = o ; 

    f = zeros( 1, J ); 
    f( 1 ) =  omega( i , 1 ); 
    f = f_rec( f , 2 , omega( i , : ) , ej );
    fj( i , : ) = f ;

    [ psi , omega , fj ] =  build_psi( psi , omega , fj , ej , vj , i + 1 , e , N , J ) ; 

end 


end

