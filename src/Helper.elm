module Helper exposing (..)

-- Ejercicio 1


type GradeStatus
    = Approved
    | Failed
    | Pending


grados : Float -> GradeStatus
grados calf =
    if calf < 0 then
        Pending

    else if calf < 7 then
        Failed

    else
        Approved


categoricalGrade : List Float -> List GradeStatus
categoricalGrade gradeStatus =
    List.map grados gradeStatus



-- Ejercicio 2


type AirplaneStatus
    = OnTime
    | Boarding
    | Delayed
    | Cancelled


airplaneScheduleAction : AirplaneStatus -> String
airplaneScheduleAction airplaneStatus =
    case airplaneStatus of
        OnTime ->
            "Esperar"

        Cancelled ->
            "Pedir reembolso"

        Boarding ->
            "Buscar boleto"

        Delayed ->
            "Esperar"



-- Ejercicio 3


airportAction : List AirplaneStatus -> List String
airportAction airplaneStatus =
    List.map airplaneScheduleAction airplaneStatus
