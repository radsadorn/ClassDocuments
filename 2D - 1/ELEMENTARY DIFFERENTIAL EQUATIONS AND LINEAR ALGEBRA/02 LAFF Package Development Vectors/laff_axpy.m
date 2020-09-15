function [ y_out ] = laff_axpy( alpha, x, y )

[ rx, cx ] = size( x );
[ ry, cy ] = size( y );

if (rx ~= 1 && cx ~= 1) || (ry ~= 1 && cy ~= 1) 
    disp('can''t copy');
    y_out = 'FAILED';
    return
end

if (rx * cx ~= ry * cy)
    y_out = 'FAILED';
    return
end

if ~isscalar( alpha )
    y_out = 'FAILED';
end

if ( cx == 1 )
    if ( cy == 1 )
        for i = 1 : rx
            y( i,1 ) = alpha * x( i,1 ) + y( i,1 );
        end
    else
        for i = 1 : rx
            y( 1,i ) = alpha * x( i,1 ) + y( 1,i );
        end
    end
else
    if ( cy == 1 )
        for i = 1 : cx
            y( i,1 ) = alpha * x( 1,i ) + y( i,1 );
        end
    else
        for i = 1 : cx
            y( 1,i ) = alpha * x( 1,i ) + y( 1,i );
        end
    end
end

y_out = y;
return 

end

