

### UI WRAPPER ###





# : ============================================================================================================================



ui_app <-


  # Header ================================================================================

navbarPage(
      
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



# Intro Panel -------------------------------------------------------

navbarMenu(

     title = 'Instructions',

     tabPanel(

          title = '1. Input & Output',

          'placeholder'

     ),


     "----",


     tabPanel(

          title = '2. Setting',

          'placeholder'

     ),


     "----",

     tabPanel(

          title = '3. Dashboard',

          'placeholder'

     )

),



# : ============================================================================================================================





tags$head(tags$style(HTML('.navbar-brand {width: 200px; font-size: 1.2rem ; text-align:center;}')))



)
