

server_app = function(input, output, session) {

      
      
      
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
      
      
      output$t_date_single = renderReactable({
            
            reactable(head(data_single()))
            
      })



}











