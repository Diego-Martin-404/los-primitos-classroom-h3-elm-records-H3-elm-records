module Helper exposing (..)

import Html exposing (Html, div, h1, li, text, ul)



-- ARITHMETIC FUNCTIONS


add2 : Int -> Int -> Int
add2 x y =
    x + y


add3 : Float -> Float -> Float -> Float
add3 x y z =
    x + y + z


calc : Int -> Int -> (Int -> Int -> Int) -> Int
calc x y op =
    op x y


type alias Language =
    { name : String
    , releaseYear : Int
    , currentVersion : String
    }


languageNames : List Language -> List String
languageNames languages =
    List.map .name languages


type alias User =
    { name : String
    , uType : String
    }


onlyStudents : List User -> List String
onlyStudents users =
    List.filterMap
        (\u ->
            if u.uType == "Student" then
                Just u.name

            else
                Nothing
        )
        users


type alias Videogame =
    { title : String
    , releaseYear : Int
    , available : Bool
    , downloads : Int
    , genres : List String
    }


getVideogameGenres : List Videogame -> List (List String)
getVideogameGenres games =
    List.map .genres games


type alias Laptop =
    { brand : String
    , model : String
    , ram : String
    , screenSize : String
    }


myLaptop : Laptop
myLaptop =
    { brand = "Apple"
    , model = "MacBook Pro"
    , ram = "16GB"
    , screenSize = "14-inch"
    }


main : Html msg
main =
    div []
        [ h1 [] [ text "My laptop" ]
        , div []
            [ ul []
                [ li [] [ text ("Marca: " ++ myLaptop.brand) ]
                , li [] [ text ("Modelo: " ++ myLaptop.model) ]
                , li [] [ text ("Ram: " ++ myLaptop.ram) ]
                , li [] [ text ("Pulgadas: " ++ myLaptop.screenSize) ]
                ]
            ]
        ]
