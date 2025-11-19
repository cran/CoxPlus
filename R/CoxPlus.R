#' CoxPlus: Cox Regression with Multiple Causes and Mixed Effects
#' @description
#' CoxPlus is a high performance package for estimating Proportional Hazards
#' Models when an event can have more than one cause. It includes support for
#' random and fixed effects, tied events, and time-varying variables.
#' @name CoxPlus
#'
#' @importFrom Rcpp evalCpp Module initialize cpp_object_initializer
#' @importFrom stats model.matrix rnorm pchisq median
#' @importFrom utils tail
#' @importFrom methods new
#' @import data.table
#' @useDynLib CoxPlus
NULL
