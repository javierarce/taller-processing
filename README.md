# Taller de Processing

Documentación para el taller de Processing en Sandwich Mixto.

#### Estructura del taller

- Presentación
- ¿De qué va el taller? Motivación sobre el taller. ¿Qué espero que aprendáis?
- Qué es Processing
- Ejemplos de cosas que se pueden hacer con Processing
- Instalación de Processing

- Estructura del taller
- Elipses
- Valores por defecto
- Variables
- width y height
- Bucles `while` y `for`
- Condicionales 
- `setup` y `draw`
- arrays?
- Imágenes y PGraphics
- Escribir en la pantalla
- Exportar imágenes
- Exportar PDFs

### 1. Elipses

- Primer programa

  `ellipse(a, b, c, d);`  

- Presentación de la ventana de Processing.
- Cómo ejecutar y detener programas.
- Valores por defecto en Processing.
- Qué es una función y los parámetros.
- Mensajes de error y warning.
- Sistema de coordenadas.
- Encontrar ayuda

### 2. Valores por defecto

- Cambiar el tamaño de la ventana: 

  `size(500, 500);`  

- Explicación sobre el sistema de colores.
- Cambiar colores de fondo:

  `fill(255, 100, 20);`  
  `fill(40);`

- Cambiar el tamaño de la línea:

  `strokeWeight(2);`  

- Borrar la pantalla con un color:

  `background(0);`  
  `background(255);`  
  `background(50, 40, 55);`

- Orden de ejecución del código
- Otras primitivas geométricas: `rect`, `triangle`, `quad`.
- *Ejercicio*: dibujar una casa, una cara, un perro, etc.

### 3. Variables

- Ejemplo de círculos concéntricos.
- Qué es una variable.
- Para qué se usan.
- Tipos de variables:

  `boolean, byte, char, color, double, float, int, long`  

- Declaración y asignación de variables


- Segundo programa (funciones setup y draw, uso de mouseX, mouseY, mousePressed, `if`, background, fill, stroke)
- Tercer programa (variables y bucles for)
- Cuarto programa (random, pixels)
- Ejercicio
- Programa de tipografía
- Programa de tipografía
- Programa de tipografía
- Exportar imágenes

### 4. width y height

- Explicación de estas variables

### 5. Bucles `while` y `for`

- ¿Qué son los bucles?

- Bucle `while`  

  ```int i = 0;
  while (i < 10) {
    ellipse(i * 10, 250, 100, 100);
    i = i + 1;
  }
  ```

- Bucle `for`  

  ```
  for (int i = 0; i < 10; i++) {
    ellipse(i * 10, 250, 100, 100);
  }
  ```

- Bonus: `random`

  `random(100);`

- *Ejercicio*: Dibujar 100 círculos de tamaño aleatorio en una ventana de 500x500 píxeles.

### 6. Condicionales (`if`)

  ```if (i == 1) {
    fill(255);
  } else if (i == 3) {
    fill(10, 50, 20);
  } else {
    fill(0);
  }
  ellipse(10, 20, 10, 50);
   ```  
- *Ejercicio*: Modificar el ejercicio anterior: dibujar 5 círculos, pintar el tercer círculo de color rojo

### 7. `setup` y `draw`

- setup, draw: diferencias y uso
- mouseX, mouseY
- mousePressed
- pmouseX, pmouseY
- key, keyPressed
- Ejemplo de una animación
- Ejercicio: TBD

### 8. arrays?

### 9. Imágenes y PGraphics

- Cargar una imagen:

  ```
  PImage img;
  img = loadImage("laDefense.jpg");
  image(img, 0, 0);
  ```

- Usar PGraphics:

  ```
  PGraphics pg;
  
  void setup() {
    size(100, 100);
    pg = createGraphics(40, 40);
  }
  
  void draw() {
    pg.beginDraw();
    pg.background(100);
    pg.stroke(255);
    pg.line(20, 20, mouseX, mouseY);
    pg.endDraw();
    image(pg, 9, 30); 
    image(pg, 51, 30);
  }
  ```

### 10. Escribir en la pantalla

  ```
  PFont font;
  // The font must be located in the sketch's 
  // "data" directory to load successfully
  font = createFont("LetterGothicStd.ttf", 32);
  textFont(font);
  text("word", 10, 50);
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
