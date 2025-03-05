# Ensure librarian is installed
if (!requireNamespace("librarian", quietly = TRUE)) install.packages("librarian")

# Install required packages
librarian::install(
  # Data manipulation and tidyverse
  tidyverse, tidymodels, janitor, skimr,
  
  # Visualization
  GGally, corrplot, plotly, viridis, 
  ggthemes, ggridges, scales, vcd, 
  RColorBrewer, ggraph, DataExplorer,
  
  # Machine Learning and Statistical Tools
  pROC, factoextra, cluster, 
  MASS, Rtsne, tsne, umap, 
  caTools, PCAtest, naniar, vip,
  xgboost, caret, finetune, dendextend,
  elasticnet, PMA, rospca, factoextra,
  
  # Additional Utilities
  conflicted, gridExtra, 
  kableExtra, DT, 
  igraph, qgraph, 
  entropy
)

message("All packages are installed and ready!")
