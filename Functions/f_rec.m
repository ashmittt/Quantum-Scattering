function [f] = f_rec( f , j , o , ej )

if j <=  length( o )
    f( j ) = o( j ) + f( j - 1 )/ej( j - 1 ) ; 
    f = f_rec( f , j+1  , o , ej  ); 
end 

end

