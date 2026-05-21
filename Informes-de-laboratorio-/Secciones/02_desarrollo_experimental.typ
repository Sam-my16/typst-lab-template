= Desarrollo experimental 

@resistencia es el grafico que quiero usar 
#figure(
  // Reemplaza a \includegraphics. Si no tenés la imagen aún, dejá el bloque vacío
  image("../imagenes/RvsT_final.pdf", width: 75%),
  caption: [Hola. Esquema del circuito utilizado.],
) <resistencia>

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