

### SERVER ###





# : ============================================================================================================================



server_app = function(input, output, session) {

      
  # A. Input =============================================================================
  
  
  ## Single File ----------------------------------------------
  
  
  ### Data Upload -------------------------
  
      data_single = reactive({
            
            req(input$upload_single)
            
            ext = tools::file_ext(input$upload_single$name)
            switch(ext,
                   csv = vroom::vroom(input$upload_single$datapath, delim = ","),
                   tsv = vroom::vroom(input$upload_single$datapath, delim = "\t"),
                   xlsx = read.xlsx(input$upload_single$datapath, detectDates = TRUE),
                   validate("Invalid file; Please upload a .csv, .tsv or .xlsx file")
            )
      })
      
      
      
  ### Update Sliders -------------------------

      observe({
        
        data_single_names = colnames(data_single())
        
        if (is.null(data_single_names))
          
          data_single_names = character(0)
        
        updateSelectInput(session,
                          inputId = "s_input_selector_rm",
                          choices = data_single_names
        )
        
      })
          
            
      observe({
        
        data_single_names = colnames(data_single())
        
        if (is.null(data_single_names))
          
          data_single_names = character(0)
        
          updateSelectInput(session,
                            inputId = "s_input_selector_x",
                            choices = data_single_names,
                            selected = head(data_single_names, 1)
                            )
        
      })
      
      
      observe({
        
        data_single_names = colnames(data_single())
        
        if (is.null(data_single_names))
          
          data_single_names = character(0)
        
          updateSelectInput(session,
                            inputId = "s_input_selector_y",
                            choices = data_single_names,
                            selected = head(data_single_names, 2)
        )
        
      })      
        
      
      
  ### Render Table: File Overview -------------------------
      
      output$t_data_summary = renderReactable({
            
            reactable(skimr::skim_without_charts(data_single()), defaultPageSize = 10, searchable = FALSE, compact = TRUE, striped = TRUE, 
                      defaultColDef = colDef(format = colFormat(separators = TRUE, digits = 2)))
            
      })
      
      
      
  ### Render Plot: Correlation Matrix -------------------------
      
      
      output$p_single_correlation_matrix = renderPlotly({
        
        req(data_single())
        req(input$s_input_selector_rm)
        
        dt_cor = copy(data_single())
        
        set(dt_cor, , input$s_input_selector_rm, NULL)

        model.matrix( ~ 0 + ., data = dt_cor) |> 
          cor(use = "pairwise.complete.obs") %>% 
          ggcorrplot(show.diag = F, type = "lower", lab = TRUE, lab_size = 2, colors = c("#BF616A", "white", "#80CFCC")) |> 
          
          ggplotly()
        
      })
      
      
  ### Render Plot: Plot Variables -------------------------

      output$p_single_biplot = renderPlot({
        
        req(data_single())

        dt_plot = copy(data_single())
        
         dt_plot |> 
          
          ggplot(aes(x = get(input$s_input_selector_x), y = get(input$s_input_selector_x))) + 
          
          geom_point(size = 3, color = '#C06C84') +
            
            geom_smooth(color = '#355C7D')
        
        
      })            
      
      
  ### Render Table: File Table -------------------------
      
      output$t_data_single = renderReactable({
        
        reactable(data_single(), defaultPageSize = 10, searchable = TRUE, compact = TRUE, striped = TRUE)
        
      })      



}











