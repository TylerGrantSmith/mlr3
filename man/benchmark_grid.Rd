% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/benchmark_grid.R
\name{benchmark_grid}
\alias{benchmark_grid}
\title{Generate a Benchmark Grid Design}
\usage{
benchmark_grid(tasks, learners, resamplings)
}
\arguments{
\item{tasks}{:: list of \link{Task}.}

\item{learners}{:: list of \link{Learner}.}

\item{resamplings}{:: list of \link{Resampling}.}
}
\value{
(\code{\link[data.table:data.table]{data.table::data.table()}}) with the cross product of the input vectors.
}
\description{
Takes a lists of \link{Task}, a list of \link{Learner} and a list of \link{Resampling} to
generate a design in an \code{\link[=expand.grid]{expand.grid()}} fashion (a.k.a. cross join or Cartesian product).

Resampling strategies are not allowed to be instantiated when passing the argument, and instead will be instantiated per task internally.
The only exception to this rule applies if all tasks have exactly the same number of rows, and the resamplings are all instantiated for such tasks.
}
\examples{
tasks = list(tsk("iris"), tsk("sonar"))
learners = list(lrn("classif.featureless"), lrn("classif.rpart"))
resamplings = list(rsmp("cv"), rsmp("subsampling"))
benchmark_grid(tasks, learners, resamplings)
}
