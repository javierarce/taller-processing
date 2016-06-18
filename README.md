# Taller de Processing

Documentación para el taller de Processing en Sandwich Mixto.

#### Estructura del taller

- Presentación
- ¿De qué va el taller? Motivación sobre el taller. ¿Qué espero que aprendáis?
- Qué es Processing
- Ejemplos de cosas que se pueden hacer con Processing
- Instalación de Processing

### Elipses
- Presentación de la ventana de Processing.
- Cómo ejecutar y detener programas.
- Valores por defecto en Processing.
- Qué es una función y los parámetros.
- Mensajes de error y warning.
- Sistema de coordenadas.
- Encontrar ayuda

```ellipse(a, b, c, d);```

### Cambiando el marco

- Cambiar el tamaño de la ventana: 

`size(500, 500);`  

- Cambiar colores de fondo:

`fill(255, 100, 20);`  
`fill(40);`

- Cambiar el tamaño de la línea:

`strokeWeight(2);`  

- Borrar la pantalla con un color:

`background(0);`


- Segundo programa (funciones setup y draw, uso de mouseX, mouseY, mousePressed, `if`, background, fill, stroke)
- Tercer programa (variables y bucles for)
- Cuarto programa (random, pixels)
- Ejercicio
- Programa de tipografía
- Programa de tipografía
- Programa de tipografía
- Exportar imágenes




```















### Exportar imágenes

`save(filename)`

Saves an image from the display window. Append a file extension to the name of the file, to indicate the file format to be used: either TIFF (.tif), TARGA (.tga), JPEG (.jpg), or PNG (.png). If no extension is included in the filename, the image will save in TIFF format and .tif

[consultar la referencia](https://processing.org/reference/save)

### Exportar PDFs

```
import processing.pdf.*;

void setup() {
  size(400, 400);
  noLoop();
  beginRecord(PDF, "filename.pdf"); 
}

void draw() {
  line(0, 0, width/2, height);

  endRecord();
}
```

[consultar la referencia](https://processing.org/reference/libraries/pdf)

### Ejercicios

1. Dibujar 1000 círculos de tamaño aleatorio en una ventana de 500x500 píxeles.
2. TBD
3. TBD
4. TBD
5. TBD

### Programas

- Programa de dibujo
- Tipografía peluda
- Pixels (?)

### Funciones

#### size

```size(width, height)```

Defines the dimension of the display window width and height in units of pixels. In a program that has the setup() function, the size() function must be the first line of code inside setup().

[consultar la referencia](https://processing.org/reference/size_.html)

#### random

```random(high)```
```random(low, high)```

Función que genera números aleatorios. Si se especifica un único parámetro de entrada, `random` devolverá valores entre 0 y dicho número.
Por ejemplo, `random(5)` devuelve valores entre 0 y 5 (no incluyendo a 5). Es decir, `random` puede devolver: 0, 1, 2, 3 o 4.
En el caso de especificar dos valores, la función `random` devolverá números entre el menor valor y el mayor (sin incluir a este último).

[consultar la referencia](https://processing.org/reference/random_.html)

===

- setup, draw
- background, fill, stroke
- mouseX, mouseY
- if
- variables
- arrays
- bucles for
- random
- random
- pixel, ellipse, rect, line

### Ayuda

Si tienes alguna duda sobre el uso de alguna función de Processing, puedes hacer dos cosas:

1. Buscar en la [referencia de Processing](https://processing.org/reference)
2. Hacer click con el botón derecho del ratón sobre la función que quieres consultar y pinchar en 'Find in Reference'.

![ayuda](https://github.com/javierarce/processing/blob/master/img/reference.png "Find in Reference")


- Consejos a la hora de aprender a programar

### Programas

#### Primer programa:

```ellipse(50, 50, 80, 80)```

#### Segundo programa:

### Referencias

- [Processing](http://processing.org)
- [Documentación de Processing](https://processing.org/reference)
- [Coding Rainbow](https://www.youtube.com/user/shiffman)
- [Patreon de Shiffman](https://www.patreon.com/codingrainbow)
- [Libros de Processing](https://processing.org/books)
- [Nature of Code](http://natureofcode.com)
- [Curso online: The Nature of Code](https://www.kadenze.com/courses/the-nature-of-code/info)

#### Libros

- Processing: A Programming Handbook for Visual Designers
- Make: Getting Started with Processing, Second Edition
- Learning Processing, Second Edition: A Beginner's Guide to Programming Images, Animation, and Interaction

### DUMP

- Learning is hard: http://taeyoonchoi.com/2014/12/3771
