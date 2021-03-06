% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/Classification.R
\name{MultiLogLoss}
\alias{MultiLogLoss}
\title{Multi Class Log Loss}
\usage{
MultiLogLoss(y_pred, y_true)
}
\arguments{
\item{y_pred}{Predicted probabilities matrix, as returned by a classifier}

\item{y_true}{Ground truth (correct) labels vector or a matrix of
correct labels indicating by 0-1, same format as probabilities matrix}
}
\value{
Multi Class Log Loss
}
\description{
Compute the multi class log loss.
}
\examples{
data(iris)
svm.model <- e1071::svm(Species~., data = iris, probability = TRUE)
pred <- predict(svm.model, iris, probability = TRUE)
MultiLogLoss(y_true = iris$Species, y_pred = attr(pred, "probabilities"))
}
