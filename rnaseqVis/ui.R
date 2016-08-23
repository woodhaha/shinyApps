#
# This is a Shiny web application. You can run the application by clicking
# the 'Run App' button above.
#
# Find out more about building applications with Shiny here:
#
#    http://shiny.rstudio.com/

library(shiny)
library(dplyr)
library(ggplot2)

######### UI: user interface #######
shinyUI(fluidPage(
  
  # Application title
  titlePanel(title = "mRNA-Seq results visualisation"),
  br(),
  
  # title
  h4("Allows basic representation of mRNA-Seq data from different tomato datasets"),
  
  # Side panel
  sidebarLayout(
    sidebarPanel(
      
      # select dataset
      selectInput("dataset",label = h4("Select relevant mRNA-Seq dataset"),choices = list("7 accessions","20 accessions"),selected = "20 accessions"),
      
      # select unit to plot
      selectInput("unit",label=h4("Select expression unit"),choices = c("counts","tpm"),helpText("counts are scaled (normalized counts), tpm are scaled (normalized) Transcript per Million"))
      ),
    mainPanel(
      textOutput("text1")
    )
  )
))
