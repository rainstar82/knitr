\name{hook_movecode}
\alias{hook_movecode}
\title{Some potentially useful document hooks}
\usage{
hook_movecode(x)
}
\arguments{
\item{x}{a character string (the content of the whole document output)}
}
\value{
The post-processed document as a character string.
}
\description{
A document hook is a function to post-process the output document.
}
\details{
\code{hook_movecode()} is a document hook to move code chunks out of LaTeX
floating environments like \samp{figure} and \samp{table} when the chunks
were actually written inside the floats. This function is primarily designed
for LyX: we often insert code chunks into floats to generate figures or
tables, but in the final output we do not want the code to float with the
environments, so we use regular expressions to find out the floating
environments, extract the code chunks and move them out. To disable this
behavior, use a comment \code{\% knitr_do_not_move} in the floating
environment.
}
\note{
These functions are hackish. Also note \code{hook_movecode()} assumes
  you to use the default output hooks for LaTeX (not Sweave or listings), and
  every figure/table environment must have a label.
}
\examples{
\dontrun{
knit_hooks$set(document = hook_movecode)
}
# see example 103 at https://github.com/yihui/knitr-examples
}
\references{
\url{http://yihui.name/knitr/hooks}
}
