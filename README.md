![ayuda](https://github.com/javierarce/processing/blob/master/img/processing.png)

# Taller de Processing

Documentación para el taller de Processing en Sandwich Mixto.

#### Estructura del taller

- Presentación.
- ¿De qué va el taller? Motivación sobre el taller. ¿Qué espero que aprendáis?
- Qué es Processing.
- Ejemplos de cosas que se pueden hacer con Processing.
- Instalación de Processing.
- Estructura del taller.

### Contenido

- [Elipses](#Elipses)
- [Estilos básicos](#estilos-basicos)
- [Variables](#variables)
- [Width y Height](#width-y-height)
- [Bucles `while` y `for`](#bucles-while-y-for)
- [Condicionales](#condicionales)
- [`setup` y `draw`](#setup-y-draw)
- [arrays](#arrays)
- [Imágenes y PGraphics](#imagenes-y-pgraphics)
- [Escribir en la pantalla](#escribir-en-la-pantalla)
- [Exportar imágenes](#exportar-imagenes)
- [Exportar PDFs](#exportar-pdfs)
- [Proyectos](#proyectos)
- [Ayuda](#ayuda)
- [Referencias](#referencias)
- [Libros](#libros)

### 0. ¿Qué es Processing?

De la Wikipedia: 

> Processing es un lenguaje de programación y entorno de desarrollo integrado de código abierto basado en Java, de fácil utilización, y que sirve como medio para la enseñanza y producción de proyectos multimedia e interactivos de diseño digital. Fue iniciado por Ben Fry y Casey Reas a partir de reflexiones en el Aesthetics and Computation Group del MIT Media Lab dirigido por John Maeda.

[https://www.processing.org](https://www.processing.org)

- https://www.kickstarter.com/projects/860869947/stringandandloop-knitting-craft-with-code?token=11442054

---

### Elipses

- Primer programa

  `ellipse(a, b, c, d);`  

- Presentación de la ventana de Processing.
- Cómo ejecutar y detener programas.
- Valores por defecto.
- Qué es una función y los parámetros.
- Mensajes de error y warning.
- Sistema de coordenadas.
- Cómo encontrar ayuda.

###  Estilos básicos

- Cambiar el tamaño de la ventana: 

  `size(500, 500);`  

- Explicación sobre el sistema de colores.
- Cambiar colores de fondo:

  `fill(255, 100, 20);`  
  `fill(40);`

- Cambiar el color de la línea:

  `stroke(255, 100, 20);`  
  `stroke(40);`

- Cambiar el tamaño de la línea:

  `strokeWeight(2);`  
  `strokeWeight(10);`  

- Borrar la pantalla con un color:

  `background(0);`  
  `background(255);`  
  `background(50, 40, 55);`

- Orden de ejecución del código
- Otras primitivas geométricas: `rect`, `triangle`, `quad`.
- *Ejercicio*: usando primitivas geométricas dibujar X.

### Variables

Las variables nos permiten almacenar valores para ser utilizados posteriormente.
Antes de poder usarlas, las variables han de ser declaradas:

```
int i = 100; // primero "declaramos" la variable y le asignamos el valor entero 100
ellipse(i, i/2, 50, 10); // ahora usamos el valor almacenado para centrar la elipse en el punto (100, 50)
```

Es posible cambiar el valor de una variable: 

```
int j = 100;
rect(j, j, 100, 200); // este rectángulo tiene la esquina superior izquierda en el punto (100, 100)

j = j + 40;
rect(j, j, 100, 200); // este rectángulo tiene la esquina superior izquierda en el punto (140, 140)

```

- Ejemplo de círculos concéntricos.
- Para qué se usan.
- Tipos de variables en Processing:

  `boolean, byte, char, color, double, float, int, long`  

- Declaración y asignación de variables

### width y height

- Explicación de estas variables del sistema.

### Bucles `while` y `for`

- ¿Qué son los bucles?  
- ¿Qué son los bucles?  
– ...  
- ¿Qué son los bucles?  
- Bucle `while` 

  ```
  int i = 0;
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

### Condicionales (`if`)

  ```
  if (i == 1) {
    fill(255);
  } else if (i == 3) {
    fill(10, 50, 20);
  } else {
    fill(0);
  }
  ellipse(10, 20, 10, 50);
   ```  
   
- *Ejercicio*: Modificar el ejercicio anterior: dibujar 5 círculos, pintar el tercer círculo de color rojo

### `setup` y `draw`

- setup, draw: diferencias y uso
- mouseX, mouseY
- mousePressed
- pmouseX, pmouseY
- key, keyPressed

- Ejemplo de una animación
- Ejercicio: TBD

### Arrays

TBD

### Imágenes y PGraphics

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

### Escribir en la pantalla

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

### Proyectos

- [Proyecto 01](https://github.com/javierarce/processing/blob/master/proyectos/proyecto_01.pde)
- [Proyecto 02](https://github.com/javierarce/processing/blob/master/proyectos/proyecto_02.pde)
- [Proyecto 03](https://github.com/javierarce/processing/blob/master/proyectos/proyecto_03.pde)

---

### Ayuda

Si tienes alguna duda sobre el uso de alguna función de Processing, puedes hacer dos cosas:

1. Buscar en la [referencia de Processing](https://processing.org/reference)
2. Hacer click con el botón derecho del ratón sobre la función que quieres consultar y pinchar en 'Find in Reference'.

![ayuda](https://github.com/javierarce/processing/blob/master/img/reference.png "Find in Reference")

- Consejos a la hora de aprender a programar

### Referencias

- [Processing](http://processing.org)
- [Documentación de Processing](https://processing.org/reference)
- [Wiki oficial de Processing](https://github.com/processing/processing/wiki)
- [Google Group oficial](https://groups.google.com/forum/#!forum/processingjs)
- [Subreddit de Processing](https://www.reddit.com/r/processing/)
- [Coding Rainbow](https://www.youtube.com/user/shiffman)
- [Patreon de Shiffman](https://www.patreon.com/codingrainbow)
- [Nature of Code](http://natureofcode.com)
- [Curso online: The Nature of Code](https://www.kadenze.com/courses/the-nature-of-code/info)

![people](https://github.com/javierarce/processing/blob/master/img/people.png)

#### Libros

- [Lista de libros de Processing](https://processing.org/books)
- [Processing: A Programming Handbook for Visual Designers](https://www.amazon.es/gp/product/B008TV535E/ref=dp-kindle-redirect?ie=UTF8&btkr=1)
- [Make: Getting Started with Processing](https://www.amazon.es/Make-Processing-Hands--Introduction-Interactive/dp/1457187086/ref=sr_1_cc_3?s=aps&ie=UTF8&qid=1466407241&sr=1-3-catcorr&keywords=Make%3A+Getting+Started+with+Processing)
- [Learning Processing: A Beginner's Guide to Programming Images, Animation, and Interaction](https://www.amazon.es/Learning-Processing-Beginners-Programming-Interaction-ebook/dp/B015P636IG/ref=sr_1_1?s=foreign-books&ie=UTF8&qid=1466407269&sr=1-1&keywords=Learning+Processing)
- [The Nature of Code](https://www.amazon.es/Nature-Code-English-Daniel-Shiffman-ebook/dp/B00BPFT8D4/ref=pd_sim_351_1?ie=UTF8&dpID=51CwJ-7tDJL&dpSrc=sims&preST=_UX300_PJku-sticker-v3%2CTopRight%2C0%2C-44_OU30_AC_UL160_SR130%2C160_&refRID=CCM5P30B3Z6GCXCAYZ6M)
