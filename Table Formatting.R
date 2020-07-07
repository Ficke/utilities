
require(dplyr)
require(Hmisc)
require(kableExtra)

row.names <- c("C()BRA", "New Custom","% Gini Improvement")
col.names <- c("MD", "NCOIL")

MD.fico <- "?"
MD.CBRA <- 0.11
MD.new <- 0.12

NCOIL.CBRA <- 0.13
NCOIL.new <- 0.14

MD <- 
  c(MD.CBRA, MD.new, 100 * (MD.new - MD.CBRA) / MD.CBRA)

NCOIL <-
  c(NCOIL.CBRA, NCOIL.new, 100 * (NCOIL.new - NCOIL.CBRA) / NCOIL.CBRA)

disp <- data.frame(MD, NCOIL,row.names = row.names)

knitr::kable(disp, align = "c",digits=3,) %>%
  kable_styling(full_width = F) %>%
  add_header_above(c(" " = 1, "Model Scorecard" = 2))



