Antes de seguir, un caso particular. Dijimos que `map` **no** modifica la colección original. Pero, ¿qué ocurriría si el mensaje dentro del bloque en el `map` _sí tiene efecto_?

En ese caso **se modificaría la colección original**, pero sería un **mal uso del** `map` :angry: . Lo que nos interesa al _mapear_ es lo que devuelve el mensaje que enviamos, no provocar un efecto sobre los objetos.