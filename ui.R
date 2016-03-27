library(shiny)
smdata<-read.csv("training.csv", stringsAsFactors = TRUE, check.names = FALSE)

shinyUI(
  pageWithSidebar(
    headerPanel("Predicting Manner of Death"),
    sidebarPanel(
      headerPanel("Input Variables"),
      selectInput("Edu", "Education Level",levels(smdata$EducationReportFlag)),
      selectInput("Race","Race",levels(smdata$Race)),
      selectInput("Mstat","Marital Status",levels(smdata$MaritalStatus)),
      selectInput("Sex","Sex",levels(smdata$Sex)),
      actionButton("goButton", "Submit")
    ),
    mainPanel(
      tabsetPanel(
        tabPanel("Prediction",h3(htmlOutput("outcomeText"))),
        tabPanel("Instructions", htmlOutput("shortText")),
        tabPanel("Background", htmlOutput("longText"))
))))