Volviendo a nuestra colección de estudiantes. Ya preguntamos si todo el grupo aprobó o si al menos alguien aprobó utilizando `all?`y `any?`. ¿Y si queremos saber **cuántos** aprobaron? Usamos `count`:

```ruby
estudiantes.count { |un_estudiante| un_estudiante.aprobo? }
```

`count` nos dice cuántos elementos de una colección cumplen la condición. Por otro lado, para calcular sumatorias tenemos el mensaje `sum`. Si queremos conocer la suma de todas las notas de la colección de estuidantes, por ejemplo, podemos hacer:

```ruby
estudiantes.sum { |un_estudiante| un_estudiante.nota_en_examen }
```

> Veamos si se entiende: agregá a la `Juegoteca` el método `promedio_de_violencia`, cuyo valor sea la sumatoria de dificultad de los juegos violentos dividida por la cantidad de juegos violentos de la `Juegoteca`.