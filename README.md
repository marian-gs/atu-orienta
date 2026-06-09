# ATU Orienta
Proyecto desarrollado como práctica de desarrollo web con Laravel, PHP y MySQL, con una interfaz preparada para integrar funcionalidades de orientación inteligente.

## Descripción
ATU Orienta es una aplicación web desarrollada con Laravel para mostrar un catálogo de cursos de Grupo ATU y ofrecer al usuario información detallada sobre cada curso.
La aplicación permite consultar los cursos disponibles, acceder a la ficha de cada curso y ver datos como la provincia, ciudad, nivel, modalidad, área, colectivos admitidos y requisitos.
Además, cada curso cuenta con una sección de orientación integrada en la misma página, donde se muestra un asistente visual con preguntas rápidas relacionadas con el curso.

## Tecnologías utilizadas
* PHP
* Laravel
* Blade
* MySQL
* Bootstrap
* JavaScript

## Funcionalidades principales
* Listado de cursos.
* Vista detallada de cada curso.
* Información del curso:

  * Provincia
  * Ciudad
  * Nivel
  * Colectivos admitidos
  * Requisitos
  * Modalidad
  * Área
* Botón para solicitar información externa.
* Botón para volver al catálogo.
* Asistente de orientación integrado dentro de la misma vista del curso.
* Chat visual con preguntas rápidas.
* Formulario general de orientación para recomendar cursos.

## Estructura básica del proyecto

app/
 └── Http/
     └── Controllers/
         ├── CursoController.php
         ├── RecomendadorController.php
         └── ChatCursoController.php


resources/
 └── views/
     ├── layouts/
     │   └── app.blade.php
     ├── cursos/
     │   ├── index.blade.php
     │   ├── show.blade.php
     │   └── asistente-inline.blade.php
     └── orientacion/
         └── formulario.blade.php
routes/
 └── web.php
```

## Notas importantes

La integración real con OpenAI no está activa porque requiere una clave de API de pago.
Funcionamiento de las respuestas del asistente
En un principio, el proyecto estaba preparado para poder conectar el asistente con la API de OpenAI y generar respuestas inteligentes sobre cada curso.
Sin embargo, al tratarse de una API de pago, no se dejó activa la conexión real con OpenAI. En su lugar, las respuestas del asistente se realizaron de forma simulada mediante código propio en el proyecto. Para ello, se utiliza el controlador `ChatCursoController`, que recibe la pregunta enviada desde el chat y devuelve una respuesta basada en los datos del curso seleccionado, como requisitos, modalidad, ciudad, provincia, nivel o colectivos admitidos.
De esta forma, el usuario puede interactuar con el asistente desde la misma página del curso, usando preguntas rápidas o escribiendo una consulta, sin depender de una API externa de pago.


