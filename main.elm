import Html exposing (text)

fib : number -> number
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



main : Html.Html a
main =
    text (toString (fib 34))