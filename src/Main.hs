main :: IO ()
main = do
    let agente1 = Agente "Agente 1" TitForTat 0
    let agente2 = Agente "Agente 2" SiempreTraiciona 0
    let rondas = 10
    let (final1, final2) = simularJuego rondas agente1 agente2
    putStrLn $ "Resultado final:"
    putStrLn $ nombre final1 ++ ": " ++ show (puntaje final1) ++ " puntos"
    putStrLn $ nombre final2 ++ ": " ++ show (puntaje final2) ++ " puntos"
