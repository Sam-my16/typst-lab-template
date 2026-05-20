#import "template/fcen.typ": informe-labo

#show: informe-labo.with(
  titulo: "Título del Experimento",
  autores: ("Autor 1", "Autor 2"),
  grupo: "Grupo 12",
)

#align(center)[
  #block(width: 85%)[
    #set par(justify: true)
    *Resumen:* Acá va el abstract del informe...
  ]
]

#include "secciones/01_introduccion.typ"


= Desarrollo experimental
Para las unidades físicas y errores (lo que hacías con `siunitx`), Typst usa texto plano de forma directa y elegante. Las incertidumbres se escriben con el símbolo `±` y la coma decimal funciona nativamente:

Como se ve en la @esquema, medimos los componentes...

#figure(
  // Reemplaza a \includegraphics. Si no tenés la imagen aún, dejá el bloque vacío
  rect(width: 100%, height: 5cm, stroke: 1pt + gray, [Espacio para la imagen]),
  caption: [Hola. Esquema del circuito utilizado.],
) <esquema>

= Resultados y discusión
Presentamos los valores medidos en la @valores:

#figure(
  table(
    columns: 3,
    align: center + horizon,
    stroke: 0.5pt + black, // Reemplaza a las líneas de la tabla
    [$R\, (k Omega)$], [$L\, (k H)$], [$C\, (p F)$],
    [$4,259 ± 0,075$], [$3,613 ± 0,059$], [$4,350 ± 0,010$]
  ),
  caption: [hola. Valores de los componentes con sus respectivas incertidumbres.],
) <valores>

= Conclusiones
El comportamiento del sistema fue el esperado...

// Bibliografía nativa al final del documento (Reemplaza a thebibliography)
= Bibliografía
+ #link("https://exactas.uba.ar")[Referencia 1]
+ #link("https://github.com")[Referencia 2]