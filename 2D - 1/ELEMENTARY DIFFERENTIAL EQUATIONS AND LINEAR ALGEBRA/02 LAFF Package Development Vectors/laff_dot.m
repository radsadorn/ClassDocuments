function [ alpha ] = laff_dot( x,y )

[ rx, cx ] = size( x );
[ ry, cy ] = size( y );

if (rx ~= 1 && cx ~= 1) || (ry ~= 1 && cy ~= 1) 
    alpha = 'FAILED';
    return
end

if (rx * cx ~= ry * cy)
    alpha = 'FAILED';
    return
end

alpha = 0;

if ( cx == 1 )
    if ( cy == 1 )
        for i = 1 : rx
            alpha = alpha + x( i,1 ) * y( i,1 );
        end
    else
        for i = 1 : rx
            alpha = alpha + x( i,1 ) * y( 1,i );
        end
    end
else
    if ( cy == 1 )
        for i = 1 : cx
            alpha = alpha + x( 1,i ) * y( i,1 );
        end
    else
        for i = 1 : cx
            alpha = alpha + x( 1,i ) * y( 1,i )
        end
    end
end

return

end

