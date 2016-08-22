import Html exposing (text,div,p)

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

isOdd : Int -> Bool
isOdd n =
     n % 2 /= 0

getOdd : List Int -> List Int
getOdd numbers =
    List.filter isOdd numbers

list: List number
list = [1,2,3,4,5,6,7,8,9,10,11,12,13,14,15,16,17,18,19,20]

fibIndex: Int
fibIndex = 30

main =
    div []

    [ p [] [ text ("Get Even Numbers in"
            ++ " "
            ++ (toString list)
            ++ " => "
            ++ (toString (getEven list)))]

    ,p [] [ text ("Get Odd Numbers in"
    ++ " "
    ++ (toString list)
    ++ " => "
    ++ (toString (getOdd list)))]

    ,p [] [ text ("Determine fibonnaci value at index"
    ++ " "
    ++ (toString fibIndex)
    ++ " => "
    ++ (toString (fib fibIndex)))]
    ]