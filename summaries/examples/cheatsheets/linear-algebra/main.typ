// Example Typst cheatsheet for Linear Algebra
#set document(title: "Linear Algebra Cheatsheet", author: "Example")
#set page(margin: 0.5in)
#set text(font: "Linux Libertine", size: 11pt)

#align(center)[
  #text(size: 17pt, weight: "bold")[Linear Algebra Cheatsheet]
]

= Matrices

Matrix multiplication: $bold(A B) != bold(B A)$ in general

= Determinants

For a 2×2 matrix:
$ det mat(a, b; c, d) = a d - b c $

= Eigenvalues

$bold(A) bold(v) = lambda bold(v)$

where $lambda$ is an eigenvalue and $bold(v)$ is an eigenvector.
