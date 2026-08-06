#let informe-labo(body) = {
  set page(
    paper: "a4",
    margin: (top: 2cm, bottom: 2cm, left: 3cm, right: 3cm),
    numbering: "1",
  )

  set text(lang: "es", size: 12pt, font: "New Computer Modern")

  set heading(numbering: "1.")

  set par(justify: true, leading: 0.75em, spacing: 1.2em)

  show figure.caption: it => [
    #set text(size: 10pt)
    #block(width: 90%, align(center)[
      **#it.supplement #it.counter.display()**: #it.body
    ])
  ]

  show link: set text(fill: blue)

  counter(page).update(1)
  body
}
