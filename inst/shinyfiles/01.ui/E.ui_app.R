

### UI WRAPPER ###





# : ============================================================================================================================



ui_app <-


  # Header ================================================================================

navbarPage(

      title = div(img(src = "mbsc.jpg", height = "100%", width = "100%", align = "center")),

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
