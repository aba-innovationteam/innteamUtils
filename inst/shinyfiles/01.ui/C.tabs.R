

### TAB PANELS ###




# : ---------





# A. Input =============================================================================


## Single File ----------------------------------------------

t_upload_single = 
      
   sidebarLayout(
         
      sidebarPanel = 
            
            sidebarPanel(
                  
                  width = 3,
                  
                  h5('Upload Tabular File'),
                  
                  fileInput("upload_single", NULL, accept = c('.csv', '.tsv', '.xlsx')),
                  
                  
                  br(), 
                  
                  
                  h5('Correlation Matrix'),
                  
                  s_input_selector_rm,
                  
                  
                  h5('Plot Variables'),
                  
                  s_input_selector_x,
                  
                  s_input_selector_y
                  
            ),
      
      mainPanel = 
            
            mainPanel(
            
              style = 'min-width: 1425px',
              
              fluidRow(

                column(
                  
                  class = "fixed_column", width = 12,
                  
                h4('File Overview', style = 'text-align: center;'),

                reactableOutput(outputId = 't_data_summary')
                
                )
                  
              ),
              
              
              
              br(),
              
              
              
              fluidRow(
                
                column(
                  
                  class = "fixed_column", width = 6,
                  
                  h4('Correlation Matrix', style = 'text-align: center;'),
                  
                  plotlyOutput(outputId = 'p_single_correlation_matrix')
                  
                ),
                
                column(
                  
                  class = "fixed_column", width = 6,
                  
                  h4('Plot Variables', style = 'text-align: center;'),
                  
                  plotOutput(outputId = 'p_single_biplot')
                  
                )
                
              ),
              
              
              
              br(),
              
              
              
              fluidRow(
                
                column(
                  
                  class = "fluid_column", width = 12,
                  
                  h4('File Table', style = 'text-align: center;'),
                  
                  reactableOutput(outputId = 't_data_single')
                  
                )
                
              ),              
                  
            )
   )





# X. Analysis =============================================================================







