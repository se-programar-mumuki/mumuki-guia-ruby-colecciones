Para saber si la `Juegoteca` es `completa?` necesitás que se cumplan dos condiciones a la vez: que tenga más de 1000 puntos **y** más de 5 juegos. Y para `juego_recomendable?` necesitás que el juego **no esté** en la `Juegoteca`. Quizá `&&` y `!` te sean útiles en estos dos casos:

```ruby
ム 7 > 3 && Mario.hermano_de? Luigi
=> true

ム !Pepita.sabe_matematica?
=> true
```

