import Data.Default

-- Definimos los tipos
data Prisionero = 
    Pris {
    eleccion::Bool,
    puntos::Integer,
    rondas::Integer
} deriving (Show, Eq)

-- J1: C[3] D[8] D C…
-- J2: D[5] D[7] C[9] C…
type Jugador1 = [Prisionero]
type Jugador2 = [Prisionero]

instance Default Prisionero where
    def = Pris {
        eleccion = True,
        puntos = def,
        rondas = 50
    }


-- Función finalizado para comprobar si el juego ha terminado
finalizado :: Jugador1 -> Jugador2 -> Bool
finalizado j1 j2 = 
    any (\j1 -> rondas j1 == 0) j1 && any (\j2 -> rondas j2 == 0) j2 
    --all se usa para verificar si todos los elementos de una lista cumplen con una condición.
