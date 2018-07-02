Landing-template
====================================  

Este es el template para empezar a armar landings usando lego-landing.  

## Para empezar

- Descarga este repositorio (no lo clones o vas a tener que borrar el remote)
- Corre `make boostrap`. Esto va a crear el setup inicial y montar la imagen
- Listo. Solo pon tus directorios de tus landings dentro de `/sites`

## Scaffolding

La estructura de archivos debe ser así:

```
/
|- sites
  |- mi-landing
    |- assets
      |- styles
        |- _archivoignorado.sass
        |- archivomappeado.sass
    |- _archivoignorado.pug
    |- archivomappeado.pug
```

Todo lo que esté dentro de `sites/mi-landing/assets/` será copiado 1 a 1 a `dist/mi-landing/`  
Con excepción de lo que se encuentre dentro de `sites/mi-landing/assets/styles` que será parseado por sass, los archivos que empiecen con `_` serán ignorados y los `.sass` se convertirán a `.css`  
De la misma forma se tratan los arhivos `.pug` que se encuentran directo dentro del landing.

## Configuración

Para env-dev se monta un servidor web en el puerto que definas en el `.env`

## Para desarrollo

Casi siempre solo utilizarás `make dev` para levantar el server y `make stop` por si se quedó levantado y hay que tirarlo.  

## Para generar los dist

Simplemente corre `make build` y deja que la magia funcione. Los resultados se verán en `dist/`
