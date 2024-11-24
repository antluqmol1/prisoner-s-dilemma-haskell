module Agentes where

    data Accion = Cooperar | Traicionar
        deriving (Show, Eq)

    data Estrategia = SiempreCoopera 
                    | SiempreTraiciona 
                    | TitForTat
                    | Aleatorio
        deriving (Show)

    data Agente = Agente {
        nombre     :: String,
        estrategia :: Estrategia,
        puntaje    :: Int
    } deriving (Show)
