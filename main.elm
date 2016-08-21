import Html exposing (text)

fib : Int -> Int
fib n =
    case n of
    0 -> 0
    1 -> 1
    _ -> fib (n - 1) + fib (n - 2)

isEven : Int -> Bool
isEven n =
    n % 2 == 0

getEven : List Int -> List Int
getEven numbers =
    List.filter isEven numbers

list: List number
list = [1,2,3,4,5,6,7,8,9]

fibIndex: Int
fibIndex = 15

main : Html.Html a
main =
    text ("Get Even Numbers in"
    ++ " "
    ++ (toString list)
    ++ " => "
    ++ (toString (getEven list))
    ++ " "
    ++ "Determine fibonnaci value at index"
    ++ " "
    ++ (toString fibIndex)
    ++ " => "
    ++ (toString (fib fibIndex)))