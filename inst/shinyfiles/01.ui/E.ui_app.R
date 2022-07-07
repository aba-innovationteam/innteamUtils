

### UI WRAPPER ###





# : ============================================================================================================================



ui_app <-


# Header ================================================================================

navbarPage(
  
      tags$head(
        
        tags$style("
        
         .fluid_column{ border-style: solid;
                        border-color: rgba(0,0,0,0.1);
                        border-width: thin; }"
                   )), 
      
      tags$head(
        
        tags$style("
        
         .fixed_column{ min-height: 350px;
                        border-style: solid;
                        border-color: rgba(0,0,0,0.1);
                        border-width: thin; }"
        )),       
      
       tags$style(".topimg {
                            margin-left:5px;
                            margin-right: -15px;
                            margin-top: -21px;
                            margin-bottom: -60px;
                          }"),    

      title = div(class = "topimg", img(src = "mbsc.jpg", width = '100%', height = '45px')),
  
      windowTitle = 'APP - Trial',
      fluid = TRUE,
      theme = default_th,
      header = NULL,
      footer = NULL,



# A. Input =============================================================================
  
navbarMenu(

     title = 'Input',

     tabPanel(

          title = 'Single File',

          t_upload_single 

     ),


     "----",


     tabPanel(

          title = 'Multiple Files',

          t_upload_multi = 'placeholder'

     )
     
),     

     
     
# X. Analysis =============================================================================
     
     tabPanel(

          title = 'Analysis',

          'placeholder'

     ),



# : ============================================================================================================================





)
