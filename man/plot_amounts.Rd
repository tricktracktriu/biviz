% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/plot_amounts.R
\name{plot_amounts_vertical}
\alias{plot_amounts_vertical}
\alias{plot_amounts_horizontal}
\alias{plot_amounts_grouped}
\alias{plot_amounts_facets}
\alias{plot_amounts_stacked}
\title{Mengen visualisieren. plot_amounts_* Familie.}
\usage{
plot_amounts_vertical(data, x, y, color = "#0d7abc")

plot_amounts_horizontal(data, x, y, color = "#0d7abc")

plot_amounts_grouped(data, x, y, group)

plot_amounts_facets(data, x, y, facet, n_col = 2, color = "#0d7abc")

plot_amounts_stacked(data, x, y, group)
}
\arguments{
\item{data}{Ein Tibble mit den Daten für den Plot.}

\item{x}{Die Variable für die x-Achse.}

\item{y}{Die Variable für die y-Achse.}

\item{color}{Farbe der Balken. Default = #0d7abc.}

\item{group}{Gruppierungsvariable für einen einzelnen Plot.}

\item{facet}{Gruppierungsvariable um mehrere Plots zu machen (Facetten).}

\item{n_col}{Anzahl Spalten bei den Facetten. Default = 2.}
}
\value{
ggplot object
}
\description{
Mengen visualisieren. plot_amounts_* Familie.
}
\examples{
df <- tibble::tibble(
  x = c("a", "b", "c", "d", "e"),
  y = 1:5
  )

plot_amounts_vertical(df, x, y)

socviz::gss_lon |>
 tidyr::drop_na(degree) |>
 dplyr::count(age, degree) |>
 plot_amounts_facets(x = age, y = n, facet = degree)

socviz::gss_lon |>
 dplyr::count(sex, degree) |>
 plot_amounts_stacked(x = degree, y = n, group = sex)

socviz::gss_lon |>
 dplyr::count(sex, degree) |>
 plot_amounts_grouped(x = sex, y = n, group = degree) +
 # farbe manuell anpassen
 colorspace::scale_fill_discrete_sequential(palette = "Purples 2")


}
