¡Pausa! :hand: Antes de continuar, necesitamos conocer a unos nuevos amigos: los _bloques_.

Los _bloques_ son **objetos** que representan un mensaje o una secuencia de envíos de mensajes, **sin ejecutar**, lista para ser evaluada cuando corresponda. La palabra con la que se definen los bloques en Ruby es _proc_. Por ejemplo, en este caso le asignamos un _bloque_ a `incrementador`:

```ruby
un_numero = 7
incrementador = proc { un_numero = un_numero + 1 }
```

Ahora avancemos un pasito: en este segundo ejemplo, al _bloque_ `{ otro_numero = otro_numero * 2 }` le enviamos el mensaje _call_, que le indica que **evalúe la secuencia de envíos de mensajes** dentro de él.

```ruby
otro_numero = 5
duplicador = proc { otro_numero = otro_numero * 2 }.call
```

¿Cuánto vale `un_numero` luego de las primeras dos líneas? Tené en cuenta que la secuencia de envío de mensajes en el _bloque_ del primer ejemplo está **sin ejecutar**. En cambio, en el ejmplo de `otro_numero` estamos enviando el mensaje `call`. Por lo tanto: 

* `un_numero` vale 7, porque el bloque `incrementador` no está aplicado. Por tanto, no se le suma 1. 
* `otro_numero` vale 10, porque el bloque `duplicador` se aplica mediante el envío de mensaje `call`, que hace que se ejecute el código dentro del bloque. Por tanto, se duplica su valor. :wink: