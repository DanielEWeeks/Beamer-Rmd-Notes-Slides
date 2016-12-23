# Beamer-Rmd-Notes-Slides
One can include notes as follows:

1) In the R Markdown preamble, include a LaTeX header file using 
code like this:

output: 
  beamer_presentation:
     theme: "Warsaw"
     includes:
        in_header: header_pagenrs.tex

2) In the included LaTeX header file, include these lines:

% \setbeameroption{hide notes}
% \setbeameroption{show notes}
\setbeameroption{show notes}
\setbeamertemplate{note page}[plain]

3) To insert a note for a given slide, after the text for that slide and 
before the start of the next slide, include this:

\note{
\begin{center}
\textbf{NOTE}
\end{center} 

 This is a test note.  Toggle by altering 'setbeameroption' in header_pagenrs.tex
}


4) Remember that the text within the \note{} will be interpreted as LaTeX code, so
you may need to escape any "%" symbols, etc.

5) To generate a PDF with the notes pages included, set it to this in the LaTeX header
file:

\setbeameroption{show notes}

To generate a PDF of only the slides without any notes pages, set it to 
this in the LaTeX header file:

\setbeameroption{hide notes} 
