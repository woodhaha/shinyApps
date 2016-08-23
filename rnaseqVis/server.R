# server.R

# load libraries
library(ggplot2)
library(dplyr)

# load data (only one time when the app is launched)
data <- read.delim("data/20accessions/normalized_expression.txt")

# define server logic to build the boxplot
server <- function(input, output) {
  
  output$text1 <- renderText({
    paste("You have selected the",input$dataset,"dataset")
  })
  
  output$plot <- renderPlot
}




# head(df)
# target_id   sample  est_counts         tpm eff_len  len accession
# 1      PHS1    C32_1  18800.3322  304.237559    2158 2337       C32
# 2      PHS1    C32_2 110292.4765 1726.890063    2158 2337       C32
# 3      PHS1    C32_3 120180.4201 1853.264232    2158 2337       C32
# 4      PHS1    C32_4  60850.3883  961.701285    2158 2337       C32
# 5      PHS1 LA0407_1    897.0589   13.954113    2158 2337    LA0407
# 6      PHS1 LA0407_2    122.6336    1.973085    2158 2337    LA0407