# ShinyDashboardUsingTealpackage

Link:- https://raviteja11.shinyapps.io/ShinyDashboardUsingTealPackage/                                                          

In this Dashboard we use clinical trial data, ADAE and ADSL refer to specific datasets that are part of the CDISC ADaM (Analysis Data Model) standards:

ADAE: Adverse Events Analysis Dataset

This dataset contains information on adverse events that occurred during the clinical trial. Adverse events are any undesirable experiences or side effects that participants may experience, and this dataset is used to analyze their frequency, severity, and relationship to treatment.

ADSL: Subject-Level Analysis Dataset

This dataset includes key demographic and baseline information for each subject in the clinical trial, such as age, gender, and treatment group. It serves as a foundational dataset for subject-level analyses and often links with other datasets for comprehensive analysis.

These datasets follow CDISC standards to ensure consistency in clinical data across studies and facilitate regulatory submissions.

1. Loading Required Libraries
shiny: Builds interactive web applications.

sparkline: Creates sparkline charts, which are small line charts typically used to show trends.

teal and teal.data: teal is a framework for creating data-centric Shiny applications, while teal.data provides functions for handling data within teal.

teal.modules.clinical and teal.modules.general: These packages provide pre-built modules for clinical and general data analysis within teal.

2. Setting Up the Data
   
teal_data(): Initializes a teal data object to store and manage datasets.

ADAE and ADSL: These variables load sample datasets from the pharmaverseadam package, representing Adverse Events (ADAE) and Subject-Level (ADSL) data, commonly used in clinical trial analysis.

3. Defining a Barchart Module
   
tm_g_barchart_simple: Creates a bar chart module that visualizes data from the ADAE dataset.

label = "ADAE Analysis": Sets the label for the module, displayed in the app.

data_extract_spec: Defines the dataset and variable to analyze. Here:

datename = "ADAE": Specifies the dataset for analysis.

select_spec: Allows users to select a variable from the ADAE dataset.

choices: Limits available variables to ARM, ACTARM, and SEX.

selected = "ACTARM": Sets "ACTARM" as the default variable.

multiple = FALSE: Allows only a single variable selection.

4. Initializing the Shiny App with Modules

init(): Initializes the teal app with specified data and modules.

modules: Defines modules to include in the app.

example_module(): A placeholder module, usually an example or sample component.

tm_data_table("Table View"): Provides a data table module named "Table View," allowing users to browse the data.

tm_variable_browser("Variables"): Provides a module for exploring and selecting variables from the datasets.

barchart_module: The bar chart module defined earlier.

5. Running the Shiny App

shinyApp(): Launches the Shiny application using the user interface (app$ui) and server logic (app$server) generated by teal.

Summary:

This code creates a Shiny app with multiple data exploration tools:

A table view of data.

A variable browser.

A bar chart module for analyzing adverse event data by selected variables.

The app uses the teal framework to integrate these components for interactive clinical data analysis.
