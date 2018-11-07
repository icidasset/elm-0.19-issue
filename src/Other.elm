module Other exposing (add)

import Other.Sub


add : Int -> Int -> Int
add x y =
    Other.Sub.add { x = x, y = y }
