# Simulación del Dilema del Prisionero - Torneo de Estrategias

Este proyecto implementa una simulación del **Dilema del Prisionero**, siguiendo la estructura del torneo propuesto por **Robert Axelrod**. Se han desarrollado varias estrategias que compiten entre sí para determinar cuál es más efectiva en este entorno iterado.

## Instalación y Ejecución

Este proyecto está desarrollado en **Haskell** y ha sido probado con **GHC 8.6**. Para compilar y ejecutar el programa, sigue estos pasos:

### 1. Clonar el repositorio
```sh
git clone https://github.com/usuario/dilema-prisionero-haskell.git
cd dilema-prisionero-haskell
```

### 2. Compilar el programa
```sh
ghc -o dilema Main.hs
```

### 3. Ejecutar el programa
```sh
./dilema
```

## Estructura del Proyecto

El código está dividido en módulos para facilitar la organización y la reutilización:

- **`Estrategias.hs`**: Define las estrategias utilizadas en el torneo, como "Tit for Tat" y estrategias aleatorias.
- **`LogicaDilema.hs`**: Implementa la lógica del dilema, incluyendo las reglas de bonificación y conversión de jugadas.
- **`Torneo.hs`**: Gestiona la ejecución del torneo entre distintas estrategias.
- **`PilaTA.hs`**: Implementa una estructura de pila utilizada en el proyecto.
- **`Main.hs`**: Punto de entrada del programa, maneja la interfaz principal.

## Ejemplos de Uso

El programa permite simular torneos con diferentes estrategias. Algunos ejemplos de salida pueden ser:

```sh
Estrategia ganadora: Tit For Tat con 120 puntos
```

## Librerías Utilizadas

Se han utilizado las siguientes librerías de Haskell:
- `Data.List`
- `System.Random`
- `Data.Map`

Todas vienen incluidas en la distribución estándar de GHC, por lo que no es necesario instalar paquetes adicionales.

## Autores
- Antonio Manuel Luque Molina
- Miguel Vázquez De la Rubia



