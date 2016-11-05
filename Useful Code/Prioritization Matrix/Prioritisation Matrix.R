# Prioritisation Matrix
library(plotly)
library(readxl)
library(xlsx)
library(dplyr)
library(dplyr)

PriorityMatrix = read.xlsx("Priority matrix.xlsx", 1, head = T, stringsAsFactors = F)
PriorityMatrix$category <- as.factor(PriorityMatrix$category)

# On nice colored background
p <- plot_ly(PriorityMatrix, x = ~feasibility, y = ~business_value, text = ~paste("Project Name: ", project_name, '</br> Cost: ', Cost), type = 'scatter', mode = 'markers', size = ~Cost, color = ~category, colors = 'Paired',
             marker = list(opacity = 0.7, sizemode = 'diameter')) %>%
  layout(title = 'Test 2',
         xaxis = list(showgrid = FALSE, range = c(0.5, 11)),
         yaxis = list(showgrid = FALSE, range = c(0.5, 11)),
         showlegend = TRUE,
         margin = "100"
  ) %>% 
  layout(plot_bgcolor='rgba(37, 86, 126, 1)') %>% 
  layout(paper_bgcolor='rgba(37, 86, 126, 1)',
         font = "Times New Roman",
         titlefont = "Times New Roman") 

p

# Then, I finish the design work on plotly.
