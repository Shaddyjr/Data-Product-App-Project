library(shiny)
library(caret)
load("Fmod")
longy<-paste(readLines("DESCRIPTION.txt"),collapse = "<br/>")
shorty<-paste(readLines("README.txt"),collapse = "<br/>")

shinyServer(
  function (input, output){
    output$shortText<-renderUI({
      HTML(shorty)
      })
    output$longText<-renderUI({
      HTML(longy)
      })
    
    output$outcomeText<-renderUI({
      if (input$goButton == 0){
        return()}
      else{
        x<-isolate(as.character(predict(ldaModS, data.frame("EducationReportFlag"=input$Edu,"MaritalStatus"=input$Mstat,"Race"=input$Race, "Sex"=input$Sex))))
        isolate(HTML(paste("The manner of death, with a ~77% accuracy, is...",x,sep = "<br/>")))
      
    }})
})