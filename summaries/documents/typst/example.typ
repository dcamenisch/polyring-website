// Example Typst document
// This file will be compiled to PDF during the build process

#set document(title: "Example Typst Document", author: "Your Name")
#set page(margin: 1in)
#set text(font: "Linux Libertine", size: 11pt)

#align(center)[
  #text(size: 17pt, weight: "bold")[Example Typst Document]
  
  #v(0.5em)
  
  Your Name
  
  #v(0.5em)
  
  #datetime.today().display()
]

#v(1em)

= Introduction

This is an example Typst document that demonstrates how to include Typst source files in the repository. During the build process, this file will be compiled to a PDF and placed in the `uploads/` directory.

= Adding Your Own Documents

To add your own Typst documents:

+ Place your `.typ` file in `src/documents/typst/`
+ Commit and push to the repository
+ The GitHub Actions workflow will compile it to PDF
+ Reference it in your pages with `../uploads/filename.pdf`

= Features

You can use all standard Typst features:

- Mathematical equations: $E = m c^2$
- Lists and enumerations
- Tables and figures
- Citations and references

== Code Blocks

```python
def hello_world():
    print("Hello from Typst!")
```

== Emphasis and Styling

You can use *bold*, _italic_, and `monospace` text.
