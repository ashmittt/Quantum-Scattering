function [ ej ] = ej_rec(  ej  , vj , e , i  ,  J , l  )

if i <= J
    ej( i ) = 2 + e^2 * vj( i ) - 1i * l - 1/ej( i -1 ) ; 
    ej = ej_rec( ej , vj , e , i + 1 , J , l) ; 
end 

end