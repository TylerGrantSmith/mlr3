% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/LearnerClassifFeatureless.R
\name{mlr_learners_classif.featureless}
\alias{mlr_learners_classif.featureless}
\alias{LearnerClassifFeatureless}
\title{Featureless Classification Learner}
\format{\link[R6:R6Class]{R6::R6Class} inheriting from \link{LearnerClassif}.}
\description{
A simple \link{LearnerClassif} which only analyses the labels during train, ignoring all features.
Hyperparameter \code{method} determines the mode of operation during prediction:
\describe{
\item{mode:}{Predicts the most frequent label. If there are two or more labels tied, randomly selects one per prediction.}
\item{sample:}{Randomly predict a label uniformly.}
\item{weighed.sample:}{Randomly predict a label, with probability estimated from the training distribution.}
}
}
\section{Construction}{
\preformatted{LearnerClassifFeatureless$new()
mlr_learners$get("classif.featureless")
lrn("classif.featureless")
}
}

\seealso{
\link[mlr3misc:Dictionary]{Dictionary} of \link[=Learner]{Learners}: \link{mlr_learners}

\code{as.data.table(mlr_learners)} for a complete table of all (also dynamically created) \link{Learner} implementations.

Other Learner: 
\code{\link{LearnerClassif}},
\code{\link{LearnerRegr}},
\code{\link{Learner}},
\code{\link{mlr_learners_classif.debug}},
\code{\link{mlr_learners_classif.rpart}},
\code{\link{mlr_learners_regr.featureless}},
\code{\link{mlr_learners_regr.rpart}},
\code{\link{mlr_learners}}
}
\concept{Learner}
