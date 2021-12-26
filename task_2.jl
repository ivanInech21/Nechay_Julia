#ДАНО: Робот - в произвольной клетке поля (без внутренних перегородок и маркеров)
#РЕЗУЛЬТАТ: Робот - в исходном положении, и все клетки по периметру внешней рамки промакированы

function mark_perimetr!(r)
    go_ugol!(r,(Sud,West))
    for side in (Nord,Ost,Sud,West)
        go_to_marker!(r,side)
    end
    
end
    
function go_to_marker!(r,side)
    while !isborder(r,side)
        putmarker!(r)
        move!(r,side)
    end
end
    
function movements!(r,side)
    while !isborder(r,side)
        move!(r,side)
    end
end
    
function go_ugol!(r, side::NTuple{2,HorizonSide})
    movements!(r,side[1])
    movements!(r,side[2])
end


