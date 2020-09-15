function [x_out] = laff_scal(alpha, x)

[ rx, cx ] = size( x );

if ~isscalar( alpha )
    x_out = 'FAILED';
    return
end

if ~isvector( x )
    x_out = 'FAILED';
    return
end

if ( cx == 1 )
    for i = 1 : rx
        x( i, 1 ) = alpha * x( i, 1 );
    end
else 
    for i = 1 : cx
        x( 1, i ) = alpha * x( 1, i );
    end
end

x_out = x;
return 

end

