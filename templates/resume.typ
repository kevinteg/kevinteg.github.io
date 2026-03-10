// Resume-specific Typst overrides
// Set a default font (required by Pandoc's Typst template)
#let font = ("Linux Libertine", "New Computer Modern")

// Wider horizontal rules (full width)
#let horizontalrule = line(length: 100%, stroke: 0.5pt + gray)

// Heading spacing and styling
#show heading.where(level: 1): set block(above: 0.8em, below: 0.4em)
#show heading.where(level: 2): set block(above: 1.2em, below: 0.5em)
#show heading.where(level: 3): it => block(above: 1.1em, below: 0.8em)[
  #text(size: 12pt, weight: "bold")[#it.body]
]

// Tighter paragraph spacing
#set par(leading: 0.55em)
#set block(spacing: 0.55em)

// Smaller margins for more content, no page numbers
#set page(margin: (x: 0.75in, y: 0.6in), numbering: none)

// Slightly smaller base font
#set text(size: 10pt)
