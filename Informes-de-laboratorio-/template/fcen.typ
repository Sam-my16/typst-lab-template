#let informe-labo(
  titulo: "",
  autores: (),
  grupo: "",
  body
) = {
  // 1. Configuración de página (Márgenes de 2cm arriba/abajo y 3cm a los lados)
  set page(
    paper: "a4",
    margin: (top: 2cm, bottom: 2cm, left: 3cm, right: 3cm),
  )
  
  // 2. Tipografía y Lenguaje (Reemplaza a babel, inputenc y tamaño 12pt)
  set text(lang: "es", size: 12pt, font: "Liberation Serif")
  
  // Párrafos sin sangría, justificados y con espacio entre ellos (parindent=0pt)
  set par(justify: true, leading: 0.75em)
  show par: set block(spacing: 1.2em)
  
  // 3. Configuración de Leyendas de Figuras y Tablas (captionsetup)
  show figure.caption: it => [
    #set text(size: 10pt)
    #block(width: 90%, align(center)[
      **#it.supplement #it.counter.display()**: #it.body
    ])
  ]
  
  // 4. Configuración de Links (hyperref con colores)
  show link: set text(fill: blue)
  
  // 5. Encabezado del Informe (Título, Autores y Afiliación)
  align(center)[
    #v(-10mm)
    #text(size: 20pt, weight: "bold")[#titulo]
    
    #v(5mm)
    #text(size: 12pt)[#autores.join(", ", last: " y ")] \
    #text(size: 11pt, style: "italic")[Grupo: #grupo]
    
    #v(2mm)
    #text(size: 10pt)[Laboratorio 7 – Dpto. de Física - FCEyN - Universidad de Buenos Aires]
    
    #v(5mm)
    #line(length: 100%, stroke: 0.5pt + gray)
  ]
  
  body
}