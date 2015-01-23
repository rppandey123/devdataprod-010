BMIVal <- function(weight,height){ weight / (height * height)}

BMISt <- function(weight,height) {
	val <-  weight / (height * height)
	if(val < 15)                 {BMtype <- "Very severely underweight"}
	if(val >= 15   & val < 16)   {BMtype <- "Severely underweight"}
	if(val >= 16   & val < 18.5) {BMtype <- "Underweight"}
	if(val >= 18.5 & val < 25)   {BMtype <- "Normal (healthy weight)"}
	if(val >= 25   & val < 30)   {BMtype <- "Overweight"}
	if(val >= 30   & val < 35)   {BMtype <- "Obese Class I (Moderately obese)"}
	if(val >= 35   & val < 40)   {BMype <- "Obese Class II (Severely obese)"}
	if(val > 40)    	     {BMtype <- "Obese Class III (Very severely obese)"}
	return(BMtype)}

shinyServer(
  function(input, output) {
    output$BMIValue   <- renderPrint({BMIVal(input$weight,input$height)})	
    output$prediction <- renderPrint({BMISt(input$weight,input$height)})
  }
)