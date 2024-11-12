#
# This is a Shiny web application. You can run the application by clicking
# the 'Run App' button above.
#
# Find out more about building applications with Shiny here
#    https://shiny.posit.co/
#

library(shiny)
library(sparkline)
library(teal)
library(teal.data)
library(teal.modules.clinical)
library(teal.modules.general)
data <- within(teal_data(), {
  ADAE <- pharmaverseadam::adae
  ADSL <- pharmaverseadam::adsl
  # nolint end
})
datanames(data) <- c("ADAE", "ADSL")
join_keys(data) <- default_cdisc_join_keys[datanames(data)]
barchart_module <- tm_g_barchart_simple(
  label = "ADAE Analysis",
  x = data_extract_spec(
    dataname = "ADAE",
    select = select_spec(
      choices = variable_choices(
        pharmaverseadam::adae,
        c("ARM", "ACTARM", "SEX")
      ),
      selected = "ACTARM",
      multiple = FALSE
    )
  )
)
app <- init(
  data = data,
  modules = modules(
    example_module("Teal Module"),
    tm_data_table("Table View"),
    tm_variable_browser("Variables"),
    barchart_module
  )
)
shinyApp(app$ui, app$server)