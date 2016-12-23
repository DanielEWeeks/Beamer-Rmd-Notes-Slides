# Beamer-Rmd-Notes-Slides

The Slide_template.Rmd is an R Markdown template that illustrates how
to easily generate Beamer slides.  This has been tested using RStudio.

It also allows one to generate plain 'notes' slides, which can be 
easily all excluded or all included in the resulting set of slides
by toggling a setting in the header_pagenrs.tex file.

For a more elegant approach, see [Lincoln Mullen's code](https://gist.github.com/lmullen/c3d4c7883f081ed8692a)


One can include notes slides as follows:

1) In the R Markdown preamble, include a LaTeX header file using 
code like this:

```
output:   
  beamer_presentation:   
     theme: "Warsaw"   
     includes:  
        in_header: header_pagenrs.tex  
```

2) In the included LaTeX header file, include these lines:  

```
% \setbeameroption{hide notes}  
% \setbeameroption{show notes}  
\setbeameroption{show notes}   
\setbeamertemplate{note page}[plain]   
```

3) To insert a note for a given slide, after the text for that slide and 
before the start of the next slide, include this:

```
\note{  
\begin{center}  
\textbf{NOTE}   
\end{center}   

 This is a test note.  Toggle by altering 'setbeameroption' in header_pagenrs.tex
}
```


4) Remember that the text within the \note{} will be interpreted as LaTeX code, so
you may need to escape any "%" symbols, etc.

5) To generate a PDF with the notes pages included, set it to this in the LaTeX header
file:

```
\setbeameroption{show notes}
```

To generate a PDF of only the slides without any notes pages, set it to 
this in the LaTeX header file:

```
\setbeameroption{hide notes} 
```
