
![BrightCoders Logo](img/logo-bc.png)

# Kata El Juego de la Vida. 
## Iteración 02 Orientación a Objetos
![cover](img/cover.jpg)
<span>Photo by <a href="https://unsplash.com/@coopery?utm_source=unsplash&amp;utm_medium=referral&amp;utm_content=creditCopyText">Mohamed Nohassi</a> on <a href="https://unsplash.com/s/photos/life?utm_source=unsplash&amp;utm_medium=referral&amp;utm_content=creditCopyText">Unsplash</a></span>

## Pre-requisitos
- [Instalar y utilizar Rubocop](https://brightcoder.gitbook.io/handbook/recursos/ruby-on-rails/rubocop)

## Nuevo requerimiento
En esta ocasión  tu implementación deberá estar completamente orientada a objetos:
- _ABSTRACCIÓN_. Probablemente el día de ayer trabajaste tu solución utilizando directamente un vector o matríz. Ahora deberás poner más atención en estructurar tu solución en abstracciones, es decir clases. Tu solución debe aplicar de manera correcta los principios de la programación orientada a objetos. 
- _POLIMORFISMO_. Encuentra una forma de utilizar polimorfismo como una mejor solución a las banderas booleanas.

Los siguientes enlaces te pueden dar algunas pistas de como cumplir con estos requerimientos:
- [Back to Basics: SOLID](https://thoughtbot.com/blog/back-to-basics-solid)
- [Refactoring: Replace Conditional with Polymorphism](https://thoughtbot.com/blog/refactoring-replace-conditional-with-polymorphism)
- [The S.O.L.I.D Principles in Pictures](https://medium.com/backticks-tildes/the-s-o-l-i-d-principles-in-pictures-b34ce2f1e898)
- [SOLID & Ruby in 5 short examples](https://medium.com/rubycademy/solid-ruby-in-5-short-examples-353ea22f9b05)
- [Replace Conditional with Polymorphism](https://refactoring.guru/replace-conditional-with-polymorphism)
- [Kill the conditional in Ruby with polymorphism](https://medium.com/@anonyo/kill-the-if-statement-or-conditional-in-ruby-with-polymorphism-a3a6f1b64e8d)

## Requerimientos Funcionales
Addapted from [Coding Dojo](https://codingdojo.org)

The Game of Life is not your typical computer game. It is a 'cellular automaton', and was invented by Cambridge mathematician John Conway.

This game became widely known when it was mentioned in an article published by Scientific American in 1970. It consists of a collection of cells which, based on a few mathematical rules, can live, die or multiply. Depending on the initial conditions, the cells form various patterns throughout the course of the game.

This Kata is about calculating the next generation of Conway’s game of life, given any starting position. 

You start with a two dimensional grid of cells, where each cell is either alive or dead. In this version of the problem, the grid is finite, and no life can exist off the edges. When calcuating the next generation of the grid, follow these rules:

1. Any live cell with fewer than two live neighbours dies, as if caused by underpopulation.
2. Any live cell with more than three live neighbours dies, as if by overcrowding.
3. Any live cell with two or three live neighbours lives on to the next generation.
4. Any dead cell with exactly three live neighbours becomes a live cell.

You should write a program that can accept an arbitrary grid of cells, and will output a similar grid showing the next generation.

### Clues
The input starting position could be a text file that looks like this:
```
Generation 1:
4 8
........
....*...
...**...
........
```
And the output could look like this:
```
Generation 2:
4 8
........
...**...
...**...
........
```
## Requerimientos no funcionales
- Calidad
  - Utilizar estilo de código definido por la comunidad (apoyarse en Rubocop)
- Desempeño y escalabilidad
  - Puede ejecutarse desde la linea de comandos y mostrar la salida en consola
- Código fuente
  - Orientado a Objetos 
  - Métodos Pequeños
  - [Aplicar los principios SOLID](https://rubygarage.org/blog/solid-principles-of-ood)
  
## Tecnologías
- Lenguaje de programación Ruby
- Línea de comando

## Entregable
- Código fuente en Github (en la rama master)

## Resources
[Encuentra aquí una lista completa de recursos de ayuda](https://brightcoder.gitbook.io/handbook/ruby-on-rails)
