#let informe-labo(
  titulo: "",
  autores: (),
  grupo: "",
  institucion: "", 
  body
) = {
  // 1. Configuración de página
  set page(
    paper: "a4",
    margin: (top: 2cm, bottom: 2cm, left: 3cm, right: 3cm),
  )
  
  // 2. Tipografía y Lenguaje (¡Gran elección New Computer Modern para Física!)
  set text(lang: "es", size: 12pt, font: "New Computer Modern")

  set heading(numbering: "1.")
  
  
  set par(justify: true, leading: 0.75em, spacing: 1.2em)
  
  // 3. Configuración de Leyendas de Figuras y Tablas
  show figure.caption: it => [
    #set text(size: 10pt)
    #block(width: 90%, align(center)[
      **#it.supplement #it.counter.display()**: #it.body
    ])
  ]
  
  // 4. Configuración de Links
  show link: set text(fill: blue)
  
  // 5. Encabezado del Informe
  align(center)[
    #v(-10mm)
    #text(size: 14pt, weight: "bold")[#titulo]
    
    #v(5mm)
    #text(size: 12pt)[#autores.join(", ", last: " y ")] \
    #text(size: 11pt, style: "italic")[#grupo] \
    #text(size: 11pt, style: "italic")[#institucion]
    
    #v(5mm)
    #line(length: 100%, stroke: 0.5pt + gray)
  ]
  
  body
}