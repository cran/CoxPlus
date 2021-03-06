% Generated by roxygen2 (4.1.1): do not edit by hand
% Please edit documentation in R/fastCox.R
\docType{package}
\name{CoxPlus}
\alias{CoxPlus}
\alias{CoxPlus-package}
\alias{fastCox}
\title{Cox Regression (Proportional Hazards Model) with Multiple Causes and Mixed Effects}
\usage{
fastCox(head, formula, par = list(), data = NULL)
}
\arguments{
\item{head}{A data frame with 4~5 columns: start, stop, event, weight, strata (optional).}

\item{formula}{A formula specifying the independent variables}

\item{par}{A optional list of parameters controlling the estimation process}

\item{data}{The dataset, a data frame containing observations on the independent variables}
}
\value{
A list containing the estimated parameters
}
\description{
A high performance package estimating Proportional Hazards Model when an even can have more than one causes, including support for random and fixed effects, tied events, and time-varying variables.
}
\examples{
# Simulate a dataset. lam=exp(x), suvtime depends on lam
x = rnorm(5000)
suvtime = -log(runif(length(x)))/exp(x)
# Censor 80\% of events
thd = quantile(suvtime, 0.2)
event = as.numeric(suvtime <= thd)
suvtime[suvtime>thd] = thd

# The estimates of beta should be very close to 1, the true value
head = cbind(start=0,stop=suvtime,event=event,weight=1)
est = fastCox(head,~x)
print(est$result)
}
\references{
1. Jing Peng, Ashish Agarwal, Kartik Hosanagar, and Raghuram Iyengar. Towards Effective Information Diffusion on Social Media Platforms: A Dyadic Analysis of Network Embeddedness. Working Paper.

2. Jing Peng, Ashish Agarwal, Kartik Hosanagar, and Raghuram Iyengar. Toward Effective Social Contagion: A Micro Level Analysis of the Impact of Dyadic Network Relationship. In Proceedings of the 2014 International Conference on Information Systems.
}

