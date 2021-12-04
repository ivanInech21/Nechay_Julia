
function krest!(r::Robot)
    for side in (Nord,West,Sud,Ost)
    move_to_GorMarker!(r,side)
    move_to_Gor!(r,inverse(side))
    
    
    end
end
    
function move_to_GorMarker!(r::Robot,side::HorizonSide)
    while !isborder(r,side)
        move!(r,side)
        putmarker!(r)
    end
end
    
function move_to_Gor!(r::Robot,side::HorizonSide)
    while ismarker(r) == true
        move!(r,side)
    end
end
    
inverse(side::HorizonSide) = HorizonSide(mod(Int(side)+2, 4))

