



### SLIDERS ###


side_bar_width = '100%'


# : ---------




# A. Input =============================================================================


## Single File ----------------------------------------------

s_input_selector_rm =
  
  selectInput(
    
    inputId = 's_input_selector_rm',
    label = 'Remove from Correlation Matrix',
    choices = NULL,
    multiple = TRUE,
    width = side_bar_width
    
  )


s_input_selector_x =
  
  selectInput(
    
    inputId = 's_input_selector_x',
    label = 'Select Variable X',
    choices = NULL,
    width = side_bar_width
    
  )


s_input_selector_y =
  
  selectInput(
    
    inputId = 's_input_selector_y',
    label = 'Select Variable Y',
    choices = NULL,
    width = side_bar_width
    
  )
