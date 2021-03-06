copy_example <- function () {
    if (!is_avail_eplus(8.8)) return()

    cfg <- eplus_config(8.8)

    example_name <- "5Zone_Transformer.idf"
    weather_name <- "USA_CA_San.Francisco.Intl.AP.724940_TMY3.epw"
    ddy_name <- "USA_CA_San.Francisco.Intl.AP.724940_TMY3.ddy"

    path_example <- file.path(cfg$dir, "ExampleFiles", example_name)
    path_idf <- normalizePath(file.path(tempdir(), example_name), mustWork = FALSE)
    file.copy(path_example, path_idf, overwrite = TRUE)

    path_weather <- file.path(cfg$dir, "WeatherData", weather_name)
    path_epw <- normalizePath(file.path(tempdir(), weather_name), mustWork = FALSE)
    file.copy(path_weather, path_epw, overwrite = TRUE)

    list(idf = path_idf, epw = path_epw)
}
