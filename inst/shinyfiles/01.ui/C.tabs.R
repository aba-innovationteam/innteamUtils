

### TAB PANELS ###




# : ---------





# A. Data Upload =============================================================================

## Rectangular Files ----------------------------------------------



## Rectangular Files ----------------------------------------------

t_upload_single = 
      
   sidebarLayout(
         
      sidebarPanel = 
            
            sidebarPanel(
                  
                  width = 3,
                  
                  fileInput("upload_single", NULL, accept = c(".csv", ".tsv")),
            ),
      
      mainPanel = 
            
            mainPanel(
                  
                  reactableOutput(outputId = 't_date_single')
                  
            )
   )





