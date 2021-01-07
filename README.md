![BrightCoders Logo](img/logo-bc.png)

# Kata Secret Handshake
![cover](img/cover.jpg)
<span>Photo by <a href="https://unsplash.com/@askkell?utm_source=unsplash&amp;utm_medium=referral&amp;utm_content=creditCopyText">Andy Kelly</a> on <a href="https://unsplash.com/s/photos/handshake?utm_source=unsplash&amp;utm_medium=referral&amp;utm_content=creditCopyText">Unsplash</a></span>

## Pre-requisitos
Para evaluar tu código e identificar posibles mejoras debes instalar y utilizar las siguientes herramientas:

- [Rubocop](https://github.com/bright-coders/commons/tree/master/topics/rubocop)
- [Rubycritic](https://github.com/bright-coders/commons/tree/master/topics/rubycritic)
- [SandiMeter](https://github.com/makaroni4/sandi_meter)

## Requerimientos funcionales

There are 10 types of people in the world: Those who understand binary, and those who don't.

You and your fellow cohort of those in the "know" when it comes to binary decide to come up with a secret "handshake".

```
1 = wink
10 = double blink
100 = close your eyes
1000 = jump
```

10000 = Reverse the order of the operations in the secret handshake.
Given a decimal number, convert it to the appropriate sequence of events for a secret handshake.

Here's a couple of examples:

Given the input 3, the function would return the array ["wink", "double blink"] because 3 is 11 in binary.

Given the input 19, the function would return the array ["double blink", "wink"] because 19 is 10011 in binary. Notice that the addition of 16 (10000 in binary) has caused the array to be reversed.

_Ejercicio tomado de [exercism](https://exercism.io/)_

## Requerimientos no-funcionales
- Calidad
  - Utilizar estilo de código definido por la comunidad (apoyarse en Rubocop)
  - Pruebas unitarias (TDD)
  - Puntuación en Rubycritic por lo menos 85 en la carpeta de la App y por lo menos 65 en las pruebas
  - Utilizar [SandiMeter](https://github.com/makaroni4/sandi_meter) para analizar el código y utilizar el resultado para hacer mejoras
- Ejecución
  - Puede ejecutarse desde la linea de comandos y mostrar la salida en consola
- Código fuente
  - Orientado a Objetos 
  - Métodos Pequeños
  - [Aplicar los principios SOLID](https://rubygarage.org/blog/solid-principles-of-ood)
- Otros
  - Incluir en el repositorio el [SmallBadge](https://github.com/jorge27/tutorial-rubycritic-small-badge) con la puntuación obtenida por RubyCritic
  - Incluir en el repositorio el reporte HTML que genera [SandiMeter](https://github.com/makaroni4/sandi_meter)
  - El repositorio debe reflejar el trabajo en equipo (en la conversación del repositorio, commits)
  - Los commits de Git deben ser atómicos y significativos
  - Actualizar [este archivo](setup/README.md) en donde se describa el proceso para hacer funcionar el proyecto 

## Tecnologías
- Lenguaje de programación Ruby
- Framework para pruebas [Rspec](https://rspec.info/) ó [Minitest](https://github.com/seattlerb/minitest)
- Rubocop, RubyCritic y SandiMeter para calidad de código
- Línea de comando

## Entregable
- Código fuente en Github
  
## Evaluación / Revisión
- Cumplimiento de requerimientos funcionales
- Cumplimiento de requerimientos no funcionales 
- Entrega dentro del tiempo establecido

## Setup
En [este elnace](setup/README.md) se describen los pasos necesarios para ejecutar/probar este proyecto.

## Resources
[Encuentra aquí una lista completa de recursos de ayuda](https://github.com/bright-coders/commons/tree/master/topics/resources)

