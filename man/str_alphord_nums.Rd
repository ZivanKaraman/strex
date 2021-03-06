% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/alphord.R
\name{str_alphord_nums}
\alias{str_alphord_nums}
\title{Make string numbers comply with alphabetical order.}
\usage{
str_alphord_nums(string)
}
\arguments{
\item{string}{A character vector.}
}
\value{
A character vector.
}
\description{
If strings are numbered, their numbers may not \emph{comply} with alphabetical
order, e.g. "abc2" comes after \code{"abc10"} in alphabetical order. We might (for
whatever reason) wish to change them such that they come in the order \emph{that
we would like}. This function alters the strings such that they comply with
alphabetical order, so here \code{"abc2"} would be renamed to "abc02". It works on
file names with more than one number in them e.g. \code{"abc01def3"} (a string
with 2 numbers). All the strings in the character vector \code{string} must have
the same number of numbers, and the non-number bits must be the same.
}
\examples{
string <- paste0("abc", 1:12)
print(string)
str_alphord_nums(string)
str_alphord_nums(c("abc9def55", "abc10def7"))
str_alphord_nums(c("01abc9def55", "5abc10def777", "99abc4def4"))
str_alphord_nums(1:10)
\dontrun{
str_alphord_nums(c("abc9def55", "abc10xyz7")) # error
}

}
\concept{alphorderers}
