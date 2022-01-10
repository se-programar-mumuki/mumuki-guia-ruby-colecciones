¡Correcto! :ok_hand:

Tanto las listas como los sets entienden estos mensajes, o dicho de otro modo, son polimórficos para `push`, `delete`, `include?` y `size`. 

Sin embargo, los siguientes mensajes...

```ruby
numeros_de_la_suerte = [6, 7, 42]
numeros_de_la_suerte.first
  # Nos retorna el primer elemento de la lista
numeros_de_la_suerte.last
  # Nos retorna el último de la lista
numeros_de_la_suerte.index 7
  # Nos retorna la posición de un elemento en la lista
```

... no podemos enviárselos a un set porque sus elementos no están ordenados. :scream:

Pero no te preocupes, todos lo que veamos de ahora en adelante en esta lección funciona tanto para listas como para sets. :muscle:
