#this function will render one report for whatever value continent, YEAR and dataFile take
#
render_report <- function(continent, YEAR, dataFile) {
  rmarkdown::render("hiv_report.Rmd", 
                    output_file = paste0(continent, "_", YEAR, "_report", ".html"),
                    params = list(current_continent = continent, year = YEAR, data_file = dataFile), 
                    output_options = list(self_contained = FALSE, lib_dir = "libs"),
                    params = "ask")
}
