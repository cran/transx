## ---- include = FALSE---------------------------------------------------------
knitr::opts_chunk$set(
  collapse = TRUE,
  comment = "#>"
)

## ----setup--------------------------------------------------------------------
library(transx)

## ----problem, message=FALSE---------------------------------------------------
library(dplyr)
options(tibble.print_min = 3)

## -----------------------------------------------------------------------------
econ <- ggplot2::economics
econ

## ----exist-already, error=TRUE------------------------------------------------
mutate(econ, pop_lag = stats::lag(as.ts(pop)))

## ----dplyr-lag----------------------------------------------------------------
mutate(econ, pop_lag = dplyr::lag(pop))

## ----example-diff, error=TRUE-------------------------------------------------
mutate(econ, pop_diff = base::diff(pop))

## ----new-fun------------------------------------------------------------------
diffx <- function(x, ...) x - dplyr::lag(x, ... )

mutate(econ, pop_diff = diffx(pop))

