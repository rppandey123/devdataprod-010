shinyUI(
  pageWithSidebar(
    # Application title
    headerPanel("BMI Calculator"),
    sidebarPanel(
      numericInput('weight', 'Kgs', 70, min = 20, max = 300, step = 1),
      numericInput('height', 'Metres', 1.90, min = .20, max = 2.50, step = .01),
      submitButton('Submit')
    ),
    mainPanel(
        h3('Results'),
        h4('BMI Value is'),
        verbatimTextOutput("BMIValue"),
        h4('Weight category is '),
        verbatimTextOutput("prediction")
    )
  )
)