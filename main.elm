import Html exposing (text)

fib : number -> number
fib n =
    case n of
    0 -> 0
    1 -> 1
    _ -> fib (n - 1) + fib (n - 2)

getEven : List number -> List number
getEven numbers =
    match numbers with
         hd :: tl -> hd % 2 == 0 ? hd : getEven tl
         [] -> Nothing 

main : Html.Html a
main = 
    text (toString (fib 34))