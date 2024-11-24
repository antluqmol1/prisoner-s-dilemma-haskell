module Juego where 
import Agentes

    pago :: Accion -> Accion -> (Int, Int)
    pago a b = case (a, b) of
        (Cooperar, Cooperar) -> (3, 3)
        (Cooperar, Traicionar) -> (0, 5)
        (Traicionar, Cooperar) -> (5, 0)
        (Traicionar, Traicionar) -> (1, 1)

    decidir :: Estrategia -> [Accion] -> Accion
    decidir SiempreCoopera _ = Cooperar
    decidir SiempreTraiciona _ = Traicionar
    decidir TitForTat [] = Cooperar  -- Cooperar en la primera ronda
    decidir TitForTat (ultima:_) = ultima
    decidir Aleatorio _ = if even (length _) then Cooperar else Traicionar


    jugarRonda :: Agente -> Agente -> [Accion] -> [Accion] -> (Agente, Agente)
    jugarRonda ag1 ag2 hist1 hist2 = 
        let accion1 = decidir (estrategia ag1) hist2
            accion2 = decidir (estrategia ag2) hist1
            (p1, p2) = pago accion1 accion2
        in (ag1 { puntaje = puntaje ag1 + p1 }, ag2 { puntaje = puntaje ag2 + p2 })


    simularJuego :: Int -> Agente -> Agente -> (Agente, Agente)
    simularJuego 0 ag1 ag2 = (ag1, ag2)
    simularJuego n ag1 ag2 = 
        let (ag1', ag2') = jugarRonda ag1 ag2 [] []
        in simularJuego (n-1) ag1' ag2'
