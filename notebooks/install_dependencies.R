# install_dependencies.R

# Define a vector of required packages
required_packages <- c(
  "tidyverse", "skimr", "corrplot", "GGally", "viridis", "patchwork",
  "scales", "gridExtra", "ggridges", "ggpubr", "ggbiplot",
  "tidymodels", "vip", "factoextra", "finetune", "ranger", "xgboost", "Boruta",
  "janitor", "summarytools", "tictoc", "kableExtra"
)

# Function to install a package if not already installed
install_if_missing <- function(pkg) {
  if (!requireNamespace(pkg, quietly = TRUE)) {
    message(paste("Installing", pkg, "..."))
    install.packages(pkg, dependencies = TRUE)
  } else {
    message(paste(pkg, "is already installed."))
  }
}

# Install each package in the list
invisible(sapply(required_packages, install_if_missing))

message("All packages are installed and ready!")
