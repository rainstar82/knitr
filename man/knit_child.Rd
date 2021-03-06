\name{knit_child}
\alias{knit_child}
\title{Knit a child document}
\usage{
knit_child(..., options = NULL, envir = knit_global())
}
\arguments{
\item{...}{arguments passed to \code{\link{knit}}}

\item{options}{a list of chunk options to be used as global options inside
the child document (ignored if not a list); when we use the \code{child}
option in a parent chunk, the chunk options of the parent chunk will be
passed to the \code{options} argument here}

\item{envir}{the environment in which the code chunks are to be evaluated
(for example, \code{\link{parent.frame}()}, \code{\link{new.env}()}, or
\code{\link{globalenv}()})}
}
\value{
A character string of the content of the compiled child document is
  returned as a character string so it can be written back to the parent
  document directly.
}
\description{
This function knits a child document and returns a character string to input
the result into the main document. It is designed to be used in the chunk
option \code{child} and serves as the alternative to the
\command{SweaveInput} command in Sweave.
}
\note{
This function is not supposed be called directly like
  \code{\link{knit}()}; instead it must be placed in a parent document to let
  \code{\link{knit}()} call it indirectly.

  The path of the child document is relative to the parent document.
}
\examples{
## you can write \\Sexpr{knit_child('child-doc.Rnw')} in an Rnw file 'main.Rnw'
## to input results from child-doc.Rnw in main.tex

## comment out the child doc by \\Sexpr{knit_child('child-doc.Rnw', eval =
## FALSE)}
}
\references{
\url{http://yihui.name/knitr/demo/child/}
}
